package mike.uspmr.util

import org.mongodb.morphia.converters.SimpleValueConverter
import org.mongodb.morphia.converters.TypeConverter
import org.mongodb.morphia.mapping.MappedField
import org.mongodb.morphia.mapping.MappingException


class MongoBigDecimalConvertor extends TypeConverter implements SimpleValueConverter{
    public MongoBigDecimalConvertor() {
        super(BigDecimal.class)
    }

    @Override
    public Object encode(Object value, MappedField optionalExtraInfo) {
        if (value == null) {
            return null
        }
        BigDecimal bigDecimalValue = (BigDecimal) value

        return bigDecimalValue.toDouble()
    }

    @Override
    @SuppressWarnings("rawtypes")
    public Object decode(Class targetClass, Object fromDBObject, MappedField field) throws MappingException {
        Double value = (Double) fromDBObject
        if (value == null) {
            return null
        }
        BigDecimal bigDecimal = BigDecimal.valueOf(value)

        return bigDecimal
    }
}
