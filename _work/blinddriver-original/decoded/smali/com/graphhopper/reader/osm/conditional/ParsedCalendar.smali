.class public Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/reader/osm/conditional/ParsedCalendar$ParseType;
    }
.end annotation


# instance fields
.field public final parseType:Lcom/graphhopper/reader/osm/conditional/ParsedCalendar$ParseType;

.field public final parsedCalendar:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Lcom/graphhopper/reader/osm/conditional/ParsedCalendar$ParseType;Ljava/util/Calendar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;->parseType:Lcom/graphhopper/reader/osm/conditional/ParsedCalendar$ParseType;

    iput-object p2, p0, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;->parsedCalendar:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public getMax()Ljava/util/Calendar;
    .locals 3

    invoke-virtual {p0}, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;->isDayless()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;->parsedCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;->parsedCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;->parsedCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;->parsedCalendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;->parsedCalendar:Ljava/util/Calendar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-object p0, p0, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;->parsedCalendar:Ljava/util/Calendar;

    return-object p0
.end method

.method public getMin()Ljava/util/Calendar;
    .locals 3

    invoke-virtual {p0}, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;->isDayless()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;->parsedCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;->parsedCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;->parsedCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;->parsedCalendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;->parsedCalendar:Ljava/util/Calendar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-object p0, p0, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;->parsedCalendar:Ljava/util/Calendar;

    return-object p0
.end method

.method public isDayOnly()Z
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;->parseType:Lcom/graphhopper/reader/osm/conditional/ParsedCalendar$ParseType;

    sget-object v0, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar$ParseType;->DAY:Lcom/graphhopper/reader/osm/conditional/ParsedCalendar$ParseType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isDayless()Z
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;->parseType:Lcom/graphhopper/reader/osm/conditional/ParsedCalendar$ParseType;

    sget-object v0, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar$ParseType;->MONTH:Lcom/graphhopper/reader/osm/conditional/ParsedCalendar$ParseType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar$ParseType;->YEAR_MONTH:Lcom/graphhopper/reader/osm/conditional/ParsedCalendar$ParseType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isYearless()Z
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;->parseType:Lcom/graphhopper/reader/osm/conditional/ParsedCalendar$ParseType;

    sget-object v0, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar$ParseType;->MONTH:Lcom/graphhopper/reader/osm/conditional/ParsedCalendar$ParseType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar$ParseType;->MONTH_DAY:Lcom/graphhopper/reader/osm/conditional/ParsedCalendar$ParseType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;->parseType:Lcom/graphhopper/reader/osm/conditional/ParsedCalendar$ParseType;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/graphhopper/util/Helper;->createFormatter()Ljava/text/DateFormat;

    move-result-object v1

    iget-object p0, p0, Lcom/graphhopper/reader/osm/conditional/ParsedCalendar;->parsedCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "; "

    invoke-static {v0, v1, p0}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
