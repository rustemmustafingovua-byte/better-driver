.class public Lcom/graphhopper/reader/osm/conditional/DateRange;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field dayOnly:Z

.field private final from:Ljava/util/Calendar;

.field reverse:Z

.field private final to:Ljava/util/Calendar;

.field yearless:Z


# direct methods
.method public constructor <init>(Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->yearless:Z

    iput-boolean v0, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->dayOnly:Z

    iput-boolean v0, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->reverse:Z

    iget-object v1, p1, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;->parsedCalendar:Ljava/util/Calendar;

    iget-object v2, p2, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;->parsedCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const-string v4, " To:"

    if-ne v3, v0, :cond_5

    invoke-virtual {p1}, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;->isYearless()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;->isYearless()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->yearless:Z

    :cond_0
    invoke-virtual {p1}, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;->isDayOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;->isDayOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->dayOnly:Z

    :cond_1
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    cmp-long v0, v0, v5

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->yearless:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->dayOnly:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "\'from\' after \'to\' not allowed, except for isYearless and isDayOnly DateRanges. From:"

    invoke-static {v0, p1, v4, p2}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    iput-boolean v3, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->reverse:Z

    :cond_4
    invoke-virtual {p1}, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;->getMin()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->from:Ljava/util/Calendar;

    invoke-virtual {p2}, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;->getMax()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->to:Ljava/util/Calendar;

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Different calendar eras are not allowed. From:"

    invoke-static {v0, p1, v4, p2}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private isInRangeYearless(Ljava/util/Calendar;)Z
    .locals 6

    iget-object v0, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->from:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->to:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge v0, v2, :cond_0

    return v3

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->from:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x5

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->to:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->from:Ljava/util/Calendar;

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-gt v0, v1, :cond_1

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object p0, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->to:Ljava/util/Calendar;

    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-gt p1, p0, :cond_1

    return v3

    :cond_1
    return v4

    :cond_2
    iget-object v0, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->from:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_4

    iget-object p0, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->from:Ljava/util/Calendar;

    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-gt p0, p1, :cond_3

    return v3

    :cond_3
    return v4

    :cond_4
    iget-object v0, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->to:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_5

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object p0, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->to:Ljava/util/Calendar;

    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-gt p1, p0, :cond_5

    return v3

    :cond_5
    return v4
.end method

.method private isInRangeYearlessReverse(Ljava/util/Calendar;)Z
    .locals 6

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->from:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v1, :cond_7

    iget-object v2, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->to:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->from:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x5

    if-ne v2, v1, :cond_3

    iget-object v2, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->to:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v1, :cond_3

    iget-object v0, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->from:Ljava/util/Calendar;

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-lt v0, v1, :cond_2

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object p0, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->to:Ljava/util/Calendar;

    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-ge p1, p0, :cond_1

    goto :goto_0

    :cond_1
    return v4

    :cond_2
    :goto_0
    return v3

    :cond_3
    iget-object v2, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->from:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v1, :cond_5

    iget-object p0, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->from:Ljava/util/Calendar;

    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-gt p0, p1, :cond_4

    return v3

    :cond_4
    return v4

    :cond_5
    iget-object v2, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->to:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, v1, :cond_6

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object p0, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->to:Ljava/util/Calendar;

    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-gt p1, p0, :cond_6

    return v3

    :cond_6
    return v4

    :cond_7
    :goto_1
    return v3
.end method


# virtual methods
.method public isInRange(Ljava/util/Calendar;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->yearless:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->dayOnly:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->from:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->to:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->from:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->to:Ljava/util/Calendar;

    invoke-virtual {p1, p0}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v1

    :cond_3
    iget-boolean v0, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->dayOnly:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-boolean v3, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->reverse:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->from:Ljava/util/Calendar;

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-le v3, p1, :cond_5

    iget-object p0, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->to:Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-gt p1, p0, :cond_4

    goto :goto_1

    :cond_4
    return v2

    :cond_5
    :goto_1
    return v1

    :cond_6
    iget-object v3, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->from:Ljava/util/Calendar;

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-gt v3, p1, :cond_7

    iget-object p0, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->to:Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-gt p1, p0, :cond_7

    return v1

    :cond_7
    return v2

    :cond_8
    iget-boolean v0, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->reverse:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Lcom/graphhopper/reader/osm/conditional/DateRange;->isInRangeYearlessReverse(Ljava/util/Calendar;)Z

    move-result p0

    return p0

    :cond_9
    invoke-direct {p0, p1}, Lcom/graphhopper/reader/osm/conditional/DateRange;->isInRangeYearless(Ljava/util/Calendar;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/graphhopper/util/Helper;->createFormatter()Ljava/text/DateFormat;

    move-result-object v0

    iget-boolean v1, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->yearless:Z

    iget-boolean v2, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->dayOnly:Z

    iget-boolean v3, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->reverse:Z

    iget-object v4, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->from:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    iget-object p0, p0, Lcom/graphhopper/reader/osm/conditional/DateRange;->to:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "yearless:"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dayOnly:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", reverse:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
