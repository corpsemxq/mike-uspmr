import org.apache.log4j.DailyRollingFileAppender

// locations to search for config files that get merged into the main config;
// config files can be ConfigSlurper scripts, Java properties files, or classes
// in the classpath in ConfigSlurper format

// grails.config.locations = [ "classpath:${appName}-config.properties",
//                             "classpath:${appName}-config.groovy",
//                             "file:${userHome}/.grails/${appName}-config.properties",
//                             "file:${userHome}/.grails/${appName}-config.groovy"]

// if (System.properties["${appName}.config.location"]) {
//    grails.config.locations << "file:" + System.properties["${appName}.config.location"]
// }

grails.project.groupId = appName // change this to alter the default package name and Maven publishing destination

// The ACCEPT header will not be used for content negotiation for user agents containing the following strings (defaults to the 4 major rendering engines)
grails.mime.disable.accept.header.userAgents = ['Gecko', 'WebKit', 'Presto', 'Trident']
grails.mime.types = [ // the first one is the default format
    all:           '*/*', // 'all' maps to '*' or the first available format in withFormat
    atom:          'application/atom+xml',
    css:           'text/css',
    csv:           'text/csv',
    form:          'application/x-www-form-urlencoded',
    html:          ['text/html','application/xhtml+xml'],
    js:            'text/javascript',
    json:          ['application/json', 'text/json'],
    multipartForm: 'multipart/form-data',
    rss:           'application/rss+xml',
    text:          'text/plain',
    hal:           ['application/hal+json','application/hal+xml'],
    xml:           ['text/xml', 'application/xml']
]

// URL Mapping Cache Max Size, defaults to 5000
//grails.urlmapping.cache.maxsize = 1000

// Legacy setting for codec used to encode data with ${}
grails.views.default.codec = "html"

// The default scope for controllers. May be prototype, session or singleton.
// If unspecified, controllers are prototype scoped.
grails.controllers.defaultScope = 'singleton'

grails.mail.default.from = "info@uspmr.com"

// GSP settings
grails {
    views {
        gsp {
            encoding = 'UTF-8'
            htmlcodec = 'xml' // use xml escaping instead of HTML4 escaping
            codecs {
                expression = 'html' // escapes values inside ${}
                scriptlet = 'html' // escapes output from scriptlets in GSPs
                taglib = 'none' // escapes output from taglibs
                staticparts = 'none' // escapes output from static template parts
            }
        }
        // escapes all not-encoded output at final stage of outputting
        // filteringCodecForContentType.'text/html' = 'html'
    }
}


grails.converters.encoding = "UTF-8"
// scaffolding templates configuration
grails.scaffolding.templates.domainSuffix = 'Instance'

// Set to false to use the new Grails 1.2 JSONBuilder in the render method
grails.json.legacy.builder = false
// enabled native2ascii conversion of i18n properties files
grails.enable.native2ascii = true
// packages to include in Spring bean scanning
grails.spring.bean.packages = []
// whether to disable processing of multi part requests
grails.web.disable.multipart=false

// request parameters to mask when logging exceptions
grails.exceptionresolver.params.exclude = ['password']

// configure auto-caching of queries by default (if false you can cache individual queries with 'cache: true')
grails.hibernate.cache.queries = false

// configure passing transaction's read-only attribute to Hibernate session, queries and criterias
// set "singleSession = false" OSIV mode in hibernate configuration after enabling
grails.hibernate.pass.readonly = false
// configure passing read-only to OSIV session by default, requires "singleSession = false" OSIV mode
grails.hibernate.osiv.readonly = false

environments {
    development {
        grails.logging.jul.usebridge = true
        String homeDir = System.getProperty('user.home')
        staticProp {
            homePropLocation = "${homeDir}/prop/homeConfig.groovy"
        }
        applicationFileLocation = "${homeDir}/applicationForm"

        mailSender {
            defaultValue {
                customerServiceEmail = "contactweb@uspmr.com"
                receviceMessageEmail = "maoxingqiang0824@gmail.com"
                props = [
                        "mail.smtp.host": "smtp.office365.com",
                        "mail.smtp.port": "587",
//                        "username" : "admin@NETORGFT2251579.onmicrosoft.com",
                        "username" : "contactweb@uspmr.com",
                        "password" : '''Empire2016$''',
                        "mail.smtp.auth" : "true",
                        "mail.smtp.starttls.enable": "true"
                ]
            }
        }

    }
    production {
        grails.logging.jul.usebridge = false
        String homeDir = System.getProperty('user.home')
        staticProp {
            homePropLocation = "${homeDir}/prop/homeProp.properties"
        }
        applicationFileLocation = "${homeDir}/applicationForm"

        mailSender {
            defaultValue {
                customerServiceEmail = "contactweb@uspmr.com"
                receviceMessageEmail = "contactweb@uspmr.com"
                props = [
                        "mail.smtp.host": "smtp.office365.com",
                        "mail.smtp.port": "587",
//                        "username" : "admin@NETORGFT2251579.onmicrosoft.com",
                        "username" : "contactweb@uspmr.com",
                        "password" : '''Empire2016$''',
                        "mail.smtp.auth" : "true",
                        "mail.smtp.starttls.enable": "true"
                ]
            }
        }
    }
}

// log4j configuration
log4j.main = {
    // Example of changing the log pattern for the default console appender:

    String logDirectory = "${System.getProperty('catalina.base') ?: '.'}/logs"
    appenders {
        console name: 'stdout', layout: pattern(conversionPattern: '%d [%t] %-5p %c{2} %x - %m%n')
        appender new DailyRollingFileAppender(
                name: 'dailyRollingFileAppender',
                datePattern: "'.'yyyy-MM-dd",  // See the API for all patterns.
                fileName: "${logDirectory}/web.log",
                layout: pattern(conversionPattern: '%d [%t] %-5p %c{2} %x - %m%n')
        )
        //        rollingFile name: 'jmsMessageSizeRollingFileAppender',
        //                    fileName: "${logDirectory}/jmsMessage.log",
        //                    maxFileSize: "10MB",
        //                    layout: pattern(conversionPattern: '%d [%t] %-5p %c{2} %x - %m%n'
        //                    )
        rollingFile name: 'loggingErrorRollingAppender',
                fileName: "${logDirectory}/webError.log",
                maxFileSize: "10MB",
                layout: pattern(conversionPattern: '%d [%t] %-5p %c{2} %x - %m%n'
                )

    }



    error  'org.codehaus.groovy.grails.web.servlet',        // controllers
           'org.codehaus.groovy.grails.web.pages',          // GSP
           'org.codehaus.groovy.grails.web.sitemesh',       // layouts
           'org.codehaus.groovy.grails.web.mapping.filter', // URL mapping
           'org.codehaus.groovy.grails.web.mapping',        // URL mapping
           'org.codehaus.groovy.grails.commons',            // core / classloading
           'org.codehaus.groovy.grails.plugins',            // plugins
           'org.codehaus.groovy.grails.orm.hibernate',      // hibernate integration
           'org.springframework',
           'org.hibernate',
           'net.sf.ehcache.hibernate'

    info  'org.codehaus.groovy.grails.web.servlet',        // controllers
            'org.codehaus.groovy.grails.web.pages',          // GSP
            'org.codehaus.groovy.grails.web.sitemesh',       // layouts
            'org.codehaus.groovy.grails.web.mapping.filter', // URL mapping
            'org.codehaus.groovy.grails.web.mapping',        // URL mapping
            'org.codehaus.groovy.grails.commons',            // core / classloading
            'org.codehaus.groovy.grails.plugins',            // plugins
            'org.codehaus.groovy.grails.orm.hibernate',      // hibernate integration
            'org.springframework',
            'org.hibernate',
            'net.sf.ehcache.hibernate'

    environments {
        development {
            debug 'grails.app'
            //            debug 'jmsMessage'

            root {
                info()
            }
        }
        test {
            info additivity: false,
                    jmsMessageSizeRollingFileAppender: 'jmsMessage'
            info additivity: false,
                    loggingErrorRollingAppender: 'web.LoggingFilters'
            /*appenders {
                appender new biz.paluch.logging.gelf.log4j.GelfLogAppender(
                        name: 'gelfAppender',
                        host: 'tcp:100.65.66.73',
                        port: 12201,
                        version: 1.1,
                        originHost: 'illendtest3.cloudapp.net',
                        extractStackTrace: true,
                        additionalFields: "runtime=grails,environment=TEST,application=securitybox",
                        //layout: pattern(conversionPattern: '%d{ABSOLUTE} %5p %c{1} %C %M::: %m%n'),
                )
            }*/
            root {
                info()
                info 'dailyRollingFileAppender'
                //info 'gelfAppender'
            }
        }

        production {
            info additivity: false,
                    loggingErrorRollingAppender: 'web.LoggingFilters'
            /*appenders {
                appender new biz.paluch.logging.gelf.log4j.GelfLogAppender(
                        name: 'gelfAppender',
                        host: 'tcp:ilgraylogfarm.cloudapp.net',
                        port: 12201,
                        version: 1.1,
                        originHost: 'gwytomcatsec.cloudapp.net',
                        extractStackTrace: true,
                        additionalFields: "runtime=grails,environment=PRODUCTION,application=securitybox",
                        //layout: pattern(conversionPattern: '%d{ABSOLUTE} %5p %c{1} %C %M::: %m%n'),
                )
            }*/
            root {
                info()
                info 'dailyRollingFileAppender'
                //info 'gelfAppender'
            }
        }
    }

}











home {

    title = "USPMR"


    housingMarket = '''Despite an improving housing market, the numbers of distressed properties in the United States remain elevated.  At the height of the great recession, banking institutions foreclosed on 8 million homes in a period of 4 years. Today, the number of vacant properties that exist exceeds 12 million in the market place.  While the rate of foreclosures decreased since 2012, the crisis is far from over.  Nearly 11 percent of homes in America are empty, creating a haven for criminals, an eyesore for neighbors and is a big problem for local governments.'''
    aboutus1 = '''USPMR is a property preservation and rehabilitation company established to manage the residual inventory derived from our nation's largest housing crisis in history.  Our mission is to keep vacant properties safe, secure and well maintained inside and out for our clients.  Our experienced team of contractors will evaluate and report potential damages or issues before they arise so that they are addressed in a timely and cost effective manner. A result of our work is an increase in the value of assets, decreased risk of further depreciation, and a safer community for our neighbors.'''
    aboutus2 = '''If you are reading this and feel like you got what it takes to help our mission, please take a look at our vendor section and application for information on joining our network! '''

//    vendors = '''"A whole is only as good as the sum of its parts" is the motto that we thoroughly hold true at USPMR.  We take great pride in vendor selection and only strive to work with the best.  A crucial aspect to our success is our employees and vendors who remain dedicated in the field, day in and day out.  We are currently recruiting vendors to join our network who have experience in rehabilitation, inspections, and preservation services.  If you are interested in becoming a vendor, please fill out the application that is provided above.  We are looking forward to working with you! '''
    vendors2 = '''Part of USPMR mission is to initiate new vendor relationships at the local level and build strong partnerships within our current network.  Evaluating vendor capabilities, procedural trainings, quality control and compliance are critical to our firm's success. Focusing on quality control is a priority for our viability in this industry. We put as much of a focus on volume as we do with quality control so that we are mitigating losses associated with risky scenarios. With the implementation of policies and procedures such as our vendor scorecard, we can focus on doing outstanding work while mitigating risk that can result in loss.'''
    vendors3 = '''We are currently recruiting vendors to join our network who have experience in rehabilitation, inspections, and preservation services.  If you are interested in becoming a vendor, please fill out the application that is provided above.  We are looking forward to working with you!'''
    vendors1 = '''"A whole is only as good as the sum of its parts" is the motto that we thoroughly hold true at USPMR.  We take great pride in vendor selection and only strive to work with the best.  A crucial aspect to our success is our employees and vendors who remain dedicated in the field, day in and day out. '''
    vendors4 = ''''''


    autoReplyEmail = """Hi,

Thank you for reaching out to US Property Management & Rehabilitation. We have received your inquiry and will be in contact with you ASAP.

If your inquiry is urgent, please email us at info@uspmr.com directly or call 732-991-2708.  We are working hard to service you and we will get back to you soon!

Best,

USPMR
info@uspmr.com
732-991-2708
WWW.USPMR.COM

"""

    service {
        firstLevelCategory = [
                "Property Preservation Services" :"https://s3-us-west-2.amazonaws.com/elasticbeanstalk-us-west-2-131173766494/uspmr/propertypreservationphoto.png",
                "Rehabilitation Services" : "https://s3-us-west-2.amazonaws.com/elasticbeanstalk-us-west-2-131173766494/uspmr/Rehabilitation.jpg"
        ]

        secondLevelCategory {
            propertypreservationservices = [
                    "Winterization" :
                            """Winterizing a vacant home is a process that prepares the plumbing infrastructure for temperature extremes. There are

two types of winterizations, dry and wet which are both equally important. Wet wints are done when there is a steam

boiler or radiant heat with a hot water boiler present at the property. When there is a dry heating system present such as

a furnaces or vents with forced hot air, that is categorized as Dry Wints. The process is usually done in preparation of

the winter season so that the pipes do not freeze over. The process begins upon inspecting the homes plumbing and

water system. This includes blowing out the water in the water heater, draining the pipes, and using anti-freeze in sinks,

tubs and toilets.""",

                    "DeWinterization" :
                            """De winterizing a property is a process that actually reverses the winterization process by reactivating the plumbing

infrastructure in order to inspect for leaks. Appliances such as dishwashers, refrigerators, washing machines and water

heaters are reconnected to the water supply to confirm that the property is protected from water damage.""",

                    "Mold Remediation" :
                            """Mold development in a property can cause negative health effects and significant damage to a property if left untreated.

Mold develops when there is evidence of water from the plumbing system or a roof as well as poor ventilation. Mold can

spread throughout a property in as little as 48-72 hours so it is imperative to identify and remediate the mold to normal

levels.""",
                    "FHA Conveyance" :
                            """Conveyance condition is a process confirming the condition of a foreclosed FHA insured property before the bank can

return to HUD.""",

                    "Lock ups" :
                            """Lock ups jobs are done to ensure that the vacant home is secure from trespassers and other forced

forms of entry. First, one must remove the existing locks at the property and then install a new

lockset along with a lockbox with a key. A thorough inspection should be done to confirm that not

only the doors are secure but the windows, garages, sheds and other forms of entry are completely

locked.""",
                    "Trash outs" :
                            """Vacant properties can be filled with debris, garbage and other contaminating items that need to be removed. Trash outs

are done to completely remove these items from the premises.""",

                    "Inspections" :
                            """A complete and thorough inspection of the exterior and interior of the property is a must. By leveraging innovative

mobile applications we can identify a problem area by taking proficient photographs and storing it in our database. Before, during and after photo documentation is a requirement and helps ensure that each job is done with quality and

control.""",
                    "Lawn Services" :
                            """maintaining the exterior grounds is essential to property preservation quality and control. Mowing, weeding, trimming

and sweeping all exterior surfaces are some examples of yard maintenance. The busiest time of year for lawn services are

usually between April 1 st and October 31 st .""",
                    "Snow Removal" :
                            """Snow and ice in the winter season can make for hazardous conditions and should be removed from all entry points

including the walkway, porches and driveways. Snow accumulation of three inches or higher is required to be removed

and salt should be applied to prevent ice from accumulating.""",
                    "Eviction" :
                            """Evictions happen when there are occupants that have remained in the property along with their personal belongings and

other property. Procedures for eviction vary from state to state so it is important to stay in tune with local state laws

when handling cases like this.""",
                    "Pool services" :
                            """A pool can be a major selling point for those in the market for a new home. If a pool is left unmaintained it can have the

opposite effect on potential buyers and creates a hazardous situation. Cleaning, covering and securing the area

surrounding a pool is imperative to properly preserving a property.""",
                    "Roof Repair/Tarping" :
                            """Upon inspection of a property it is imperative to fully inspect the roof and take high quality before photos of any

indication of a leak. First, a tarp can be placed on the roof to mitigate damages but this is a temporary solution. Roof

repairs are performed by qualified vendors that have the necessary equipment and crews to successfully repair a roof."""

            ]



            rehabilitationservices = [
                    "Electrical" : """""",
                    "Plumbing" : """""",
                    "HVAC" : """""",
                    "Construction" : """""",
            ]


            picSrcMap = [

                    "Electrical" : """https://s3-us-west-2.amazonaws.com/elasticbeanstalk-us-west-2-131173766494/uspmr/electirc.jpg""",
                    "Plumbing" : """https://s3-us-west-2.amazonaws.com/elasticbeanstalk-us-west-2-131173766494/uspmr/plumbing1.jpg""",
                    "HVAC" : """https://s3-us-west-2.amazonaws.com/elasticbeanstalk-us-west-2-131173766494/uspmr/HVAC.jpg""",
                    "Construction" : """https://s3-us-west-2.amazonaws.com/elasticbeanstalk-us-west-2-131173766494/uspmr/contracting.jpg""",


                    "Roof Repair/Tarping" : "https://s3-us-west-2.amazonaws.com/elasticbeanstalk-us-west-2-131173766494/uspmr/ROOF+REPAIR.jpg",
                    "Pool services" :"https://s3-us-west-2.amazonaws.com/elasticbeanstalk-us-west-2-131173766494/uspmr/POOL+SECURING.jpg",
                    "Eviction" :"https://s3-us-west-2.amazonaws.com/elasticbeanstalk-us-west-2-131173766494/uspmr/EVICTION.jpg",
                    "Snow Removal" : "https://s3-us-west-2.amazonaws.com/elasticbeanstalk-us-west-2-131173766494/uspmr/SNOW+REMOVAL.jpg",
                    "Lawn Services" : "https://s3-us-west-2.amazonaws.com/elasticbeanstalk-us-west-2-131173766494/uspmr/LAWNSERVICE.jpg",
                    "DeWinterization" : "https://s3-us-west-2.amazonaws.com/elasticbeanstalk-us-west-2-131173766494/uspmr/DEWINT.jpg",
                    "Winterization" :"https://s3-us-west-2.amazonaws.com/elasticbeanstalk-us-west-2-131173766494/uspmr/WINTERIZATION1.jpg",
                    "Mold Remediation" : "https://s3-us-west-2.amazonaws.com/elasticbeanstalk-us-west-2-131173766494/uspmr/MOLD.jpg",
                    "FHA Conveyance" : "https://s3-us-west-2.amazonaws.com/elasticbeanstalk-us-west-2-131173766494/uspmr/FHA.jpg",
                    "Lock ups" : "https://s3-us-west-2.amazonaws.com/elasticbeanstalk-us-west-2-131173766494/uspmr/LOCK+UPS.jpg",
                    "Trash outs" : "https://s3-us-west-2.amazonaws.com/elasticbeanstalk-us-west-2-131173766494/uspmr/TRASHOUTS.jpg",
                    "Inspections" : "https://s3-us-west-2.amazonaws.com/elasticbeanstalk-us-west-2-131173766494/uspmr/INSPECTIONS.jpg"
            ]



        }

    }

}



contact {
    email = "info@USPMR.com"
    phone = "(732)991-2708"
    address = "123 Washington Street, Hoboken, NJ, 07030"
}
