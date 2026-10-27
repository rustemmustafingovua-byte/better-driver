.class public Lcom/graphhopper/reader/osm/conditional/DateRangeParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser;


# static fields
.field private static final DAY_NAMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MONTH_DAY2_DF:Ljava/text/DateFormat;

.field private static final MONTH_DAY_DF:Ljava/text/DateFormat;

.field private static final MONTH_DF:Ljava/text/DateFormat;

.field private static final YEAR_MONTH_DAY_DF:Ljava/text/DateFormat;

.field private static final YEAR_MONTH_DF:Ljava/text/DateFormat;


# instance fields
.field private date:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "yyyy MMM dd"

    invoke-static {v0}, Lcom/graphhopper/reader/osm/conditional/DateRangeParser;->create3CharMonthFormatter(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/reader/osm/conditional/DateRangeParser;->YEAR_MONTH_DAY_DF:Ljava/text/DateFormat;

    const-string v0, "MMM dd"

    invoke-static {v0}, Lcom/graphhopper/reader/osm/conditional/DateRangeParser;->create3CharMonthFormatter(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/reader/osm/conditional/DateRangeParser;->MONTH_DAY_DF:Ljava/text/DateFormat;

    const-string v0, "dd.MM"

    invoke-static {v0}, Lcom/graphhopper/util/Helper;->createFormatter(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/reader/osm/conditional/DateRangeParser;->MONTH_DAY2_DF:Ljava/text/DateFormat;

    const-string v0, "yyyy MMM"

    invoke-static {v0}, Lcom/graphhopper/reader/osm/conditional/DateRangeParser;->create3CharMonthFormatter(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/reader/osm/conditional/DateRangeParser;->YEAR_MONTH_DF:Ljava/text/DateFormat;

    const-string v0, "MMM"

    invoke-static {v0}, Lcom/graphhopper/reader/osm/conditional/DateRangeParser;->create3CharMonthFormatter(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/reader/osm/conditional/DateRangeParser;->MONTH_DF:Ljava/text/DateFormat;

    const-string v6, "Fr"

    const-string v7, "Sa"

    const-string v1, "Su"

    const-string v2, "Mo"

    const-string v3, "Tu"

    const-string v4, "We"

    const-string v5, "Th"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/reader/osm/conditional/DateRangeParser;->DAY_NAMES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/graphhopper/reader/osm/conditional/DateRangeParser;->createCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/graphhopper/reader/osm/conditional/DateRangeParser;-><init>(Ljava/util/Calendar;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/graphhopper/reader/osm/conditional/DateRangeParser;->date:Ljava/util/Calendar;

    return-void
.end method

.method private static create3CharMonthFormatter(Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .locals 14

    new-instance v0, Ljava/text/DateFormatSymbols;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    const-string v12, "Nov"

    const-string v13, "Dec"

    const-string v2, "Jan"

    const-string v3, "Feb"

    const-string v4, "Mar"

    const-string v5, "Apr"

    const-string v6, "May"

    const-string v7, "Jun"

    const-string v8, "Jul"

    const-string v9, "Aug"

    const-string v10, "Sep"

    const-string v11, "Oct"

    filled-new-array/range {v2 .. v13}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormatSymbols;->setShortMonths([Ljava/lang/String;)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    sget-object p0, Lcom/graphhopper/util/Helper;->UTC:Ljava/util/TimeZone;

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v1
.end method

.method public static createCalendar()Ljava/util/Calendar;
    .locals 2

    sget-object v0, Lcom/graphhopper/util/Helper;->UTC:Ljava/util/TimeZone;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static createInstance(Ljava/lang/String;)Lcom/graphhopper/reader/osm/conditional/DateRangeParser;
    .locals 2

    invoke-static {}, Lcom/graphhopper/reader/osm/conditional/DateRangeParser;->createCalendar()Ljava/util/Calendar;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "yyyy-MM-dd"

    invoke-static {v1}, Lcom/graphhopper/util/Helper;->createFormatter(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    new-instance p0, Lcom/graphhopper/reader/osm/conditional/DateRangeParser;

    invoke-direct {p0, v0}, Lcom/graphhopper/reader/osm/conditional/DateRangeParser;-><init>(Ljava/util/Calendar;)V

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getRange(Ljava/lang/String;)Lcom/graphhopper/reader/osm/conditional/DateRange;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x2

    if-gt v1, v2, :cond_3

    array-length v1, p0

    const/4 v3, 0x1

    if-ge v1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    aget-object v4, p0, v1

    invoke-static {v4}, Lcom/graphhopper/reader/osm/conditional/DateRangeParser;->parseDateString(Ljava/lang/String;)Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;

    move-result-object v4

    array-length v5, p0

    if-ne v5, v2, :cond_2

    aget-object p0, p0, v3

    invoke-static {p0}, Lcom/graphhopper/reader/osm/conditional/DateRangeParser;->parseDateString(Ljava/lang/String;)Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;

    move-result-object p0

    goto :goto_0

    :cond_2
    aget-object p0, p0, v1

    invoke-static {p0}, Lcom/graphhopper/reader/osm/conditional/DateRangeParser;->parseDateString(Ljava/lang/String;)Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;

    move-result-object p0

    :goto_0
    :try_start_0
    new-instance v1, Lcom/graphhopper/reader/osm/conditional/DateRange;

    invoke-direct {v1, v4, p0}, Lcom/graphhopper/reader/osm/conditional/DateRange;-><init>(Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_3
    :goto_1
    return-object v0
.end method

.method public static parseDateString(Ljava/lang/String;)Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;
    .locals 3

    const-string v0, "(,( )*)?(PH|SH)"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/graphhopper/reader/osm/conditional/DateRangeParser;->createCalendar()Ljava/util/Calendar;

    move-result-object v0

    :try_start_0
    sget-object v1, Lcom/graphhopper/reader/osm/conditional/DateRangeParser;->YEAR_MONTH_DAY_DF:Ljava/text/DateFormat;

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    new-instance v1, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;

    sget-object v2, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar$ParseType;->YEAR_MONTH_DAY:Lcom/graphhopper/reader/osm/conditional/ParsedCalendar$ParseType;

    invoke-direct {v1, v2, v0}, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;-><init>(Lcom/graphhopper/reader/osm/conditional/ParsedCalendar$ParseType;Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :try_start_1
    sget-object v1, Lcom/graphhopper/reader/osm/conditional/DateRangeParser;->MONTH_DAY_DF:Ljava/text/DateFormat;

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    new-instance v1, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;

    sget-object v2, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar$ParseType;->MONTH_DAY:Lcom/graphhopper/reader/osm/conditional/ParsedCalendar$ParseType;

    invoke-direct {v1, v2, v0}, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;-><init>(Lcom/graphhopper/reader/osm/conditional/ParsedCalendar$ParseType;Ljava/util/Calendar;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    :try_start_2
    sget-object v1, Lcom/graphhopper/reader/osm/conditional/DateRangeParser;->MONTH_DAY2_DF:Ljava/text/DateFormat;

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    new-instance v1, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;

    sget-object v2, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar$ParseType;->MONTH_DAY:Lcom/graphhopper/reader/osm/conditional/ParsedCalendar$ParseType;

    invoke-direct {v1, v2, v0}, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;-><init>(Lcom/graphhopper/reader/osm/conditional/ParsedCalendar$ParseType;Ljava/util/Calendar;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    :try_start_3
    sget-object v1, Lcom/graphhopper/reader/osm/conditional/DateRangeParser;->YEAR_MONTH_DF:Ljava/text/DateFormat;

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    new-instance v1, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;

    sget-object v2, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar$ParseType;->YEAR_MONTH:Lcom/graphhopper/reader/osm/conditional/ParsedCalendar$ParseType;

    invoke-direct {v1, v2, v0}, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;-><init>(Lcom/graphhopper/reader/osm/conditional/ParsedCalendar$ParseType;Ljava/util/Calendar;)V
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    :try_start_4
    sget-object v1, Lcom/graphhopper/reader/osm/conditional/DateRangeParser;->MONTH_DF:Ljava/text/DateFormat;

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    new-instance v1, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;

    sget-object v2, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar$ParseType;->MONTH:Lcom/graphhopper/reader/osm/conditional/ParsedCalendar$ParseType;

    invoke-direct {v1, v2, v0}, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;-><init>(Lcom/graphhopper/reader/osm/conditional/ParsedCalendar$ParseType;Ljava/util/Calendar;)V
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    :catch_4
    sget-object v1, Lcom/graphhopper/reader/osm/conditional/DateRangeParser;->DAY_NAMES:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    const/4 p0, 0x7

    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    new-instance v1, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;

    sget-object p0, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar$ParseType;->DAY:Lcom/graphhopper/reader/osm/conditional/ParsedCalendar$ParseType;

    invoke-direct {v1, p0, v0}, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;-><init>(Lcom/graphhopper/reader/osm/conditional/ParsedCalendar$ParseType;Ljava/util/Calendar;)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Unparsable date: \""

    const-string v2, "\""

    invoke-static {v1, p0, v2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method


# virtual methods
.method public checkCondition(Ljava/lang/String;)Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;
    .locals 0

    invoke-static {p1}, Lcom/graphhopper/reader/osm/conditional/DateRangeParser;->getRange(Ljava/lang/String;)Lcom/graphhopper/reader/osm/conditional/DateRange;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p0, Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;->INVALID:Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/reader/osm/conditional/DateRangeParser;->date:Ljava/util/Calendar;

    invoke-virtual {p1, p0}, Lcom/graphhopper/reader/osm/conditional/DateRange;->isInRange(Ljava/util/Calendar;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;->TRUE:Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;

    return-object p0

    :cond_1
    sget-object p0, Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;->FALSE:Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;

    return-object p0
.end method
