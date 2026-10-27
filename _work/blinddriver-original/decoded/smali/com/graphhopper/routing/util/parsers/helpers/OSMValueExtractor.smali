.class public Lcom/graphhopper/routing/util/parsers/helpers/OSMValueExtractor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final APPROX_PATTERN:Ljava/util/regex/Pattern;

.field private static final FEET_PATTERN:Ljava/util/regex/Pattern;

.field private static final INCH_PATTERN:Ljava/util/regex/Pattern;

.field private static final METER_PATTERN:Ljava/util/regex/Pattern;

.field private static final MGW_PATTERN:Ljava/util/regex/Pattern;

.field private static final TON_PATTERN:Ljava/util/regex/Pattern;

.field private static final WSPACE_PATTERN:Ljava/util/regex/Pattern;

.field private static final logger:Lnc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "tons?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/util/parsers/helpers/OSMValueExtractor;->TON_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "mgw"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/util/parsers/helpers/OSMValueExtractor;->MGW_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "\\s"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/util/parsers/helpers/OSMValueExtractor;->WSPACE_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "meters?|mtrs?|mt|m\\."

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/util/parsers/helpers/OSMValueExtractor;->METER_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "\"|\'\'"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/util/parsers/helpers/OSMValueExtractor;->INCH_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "\'|feet"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/util/parsers/helpers/OSMValueExtractor;->FEET_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "~|approx"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/util/parsers/helpers/OSMValueExtractor;->APPROX_PATTERN:Ljava/util/regex/Pattern;

    const-class v0, Lcom/graphhopper/routing/util/parsers/helpers/OSMValueExtractor;

    invoke-static {v0}, Lnc/d;->b(Ljava/lang/Class;)Lnc/b;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/util/parsers/helpers/OSMValueExtractor;->logger:Lnc/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static conditionalWeightToTons(Ljava/lang/String;)D
    .locals 3

    :try_start_0
    const-string v0, "weight>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const-string v0, "weight >"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x7

    :cond_1
    :goto_0
    if-lez v0, :cond_3

    const/16 v1, 0x29

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gez v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_2
    if-le v1, v0, :cond_3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/graphhopper/routing/util/parsers/helpers/OSMValueExtractor;->stringToTons(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :cond_3
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :goto_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "value "

    invoke-static {v2, p0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static extractMeter(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/graphhopper/routing/ev/EdgeIntAccess;",
            "Lcom/graphhopper/reader/ReaderWay;",
            "Lcom/graphhopper/routing/ev/DecimalEncodedValue;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2, p4}, Lcom/graphhopper/reader/ReaderElement;->getFirstValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/graphhopper/routing/util/parsers/helpers/OSMValueExtractor;->stringToMeter(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p2

    if-eqz p2, :cond_0

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :cond_0
    move-wide v6, v0

    const/4 v3, 0x0

    move v4, p0

    move-object v5, p1

    move-object v2, p3

    invoke-interface/range {v2 .. v7}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->setDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V

    return-void
.end method

.method public static extractTons(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/graphhopper/routing/ev/EdgeIntAccess;",
            "Lcom/graphhopper/reader/ReaderWay;",
            "Lcom/graphhopper/routing/ev/DecimalEncodedValue;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2, p4}, Lcom/graphhopper/reader/ReaderElement;->getFirstValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/graphhopper/routing/util/parsers/helpers/OSMValueExtractor;->stringToTons(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p2

    if-eqz p2, :cond_0

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :cond_0
    move-wide v6, v0

    const/4 v3, 0x0

    move v4, p0

    move-object v5, p1

    move-object v2, p3

    invoke-interface/range {v2 .. v7}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->setDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V

    return-void
.end method

.method public static isInvalidValue(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/graphhopper/util/Helper;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "default"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "unknown"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "unrestricted"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u301c"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "narrow"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "unsigned"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "fixme"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "small"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ">"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "<"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static stringToMeter(Ljava/lang/String;)D
    .locals 13

    sget-object v0, Lcom/graphhopper/routing/util/parsers/helpers/OSMValueExtractor;->WSPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p0}, Lcom/graphhopper/util/Helper;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/graphhopper/routing/util/parsers/helpers/OSMValueExtractor;->METER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v1, "m"

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/graphhopper/routing/util/parsers/helpers/OSMValueExtractor;->INCH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v2, "in"

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v3, Lcom/graphhopper/routing/util/parsers/helpers/OSMValueExtractor;->FEET_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v3, "ft"

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/graphhopper/routing/util/parsers/helpers/OSMValueExtractor;->isInvalidValue(Ljava/lang/String;)Z

    move-result v4

    const-wide/high16 v5, 0x7ff8000000000000L    # Double.NaN

    if-eqz v4, :cond_0

    return-wide v5

    :cond_0
    const-string v4, "~"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "approx"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v4, Lcom/graphhopper/routing/util/parsers/helpers/OSMValueExtractor;->APPROX_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-wide v7, 0x3fe999999999999aL    # 0.8

    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x2

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide v11, 0x3f9a027525460aa6L    # 0.0254

    mul-double/2addr v9, v11

    goto :goto_3

    :catch_0
    return-wide v5

    :cond_4
    const-wide/16 v9, 0x0

    :goto_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-wide v0, 0x3fd381d7dbf487fdL    # 0.3048

    :goto_4
    mul-double/2addr v7, v0

    goto :goto_5

    :cond_5
    const-string v0, "cm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    goto :goto_4

    :cond_6
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_7
    :goto_5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    return-wide v9

    :cond_8
    :try_start_1
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    mul-double/2addr v0, v7

    add-double/2addr v0, v9

    return-wide v0

    :catch_1
    return-wide v5
.end method

.method public static stringToTons(Ljava/lang/String;)D
    .locals 7

    sget-object v0, Lcom/graphhopper/routing/util/parsers/helpers/OSMValueExtractor;->TON_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p0}, Lcom/graphhopper/util/Helper;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "t"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/graphhopper/routing/util/parsers/helpers/OSMValueExtractor;->MGW_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/graphhopper/routing/util/parsers/helpers/OSMValueExtractor;->isInvalidValue(Ljava/lang/String;)Z

    move-result v1

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    if-eqz v1, :cond_0

    return-wide v2

    :cond_0
    const-string v1, "st"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-wide v0, 0x3fed07bbd0580f82L    # 0.907194048807

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    move-wide v0, v5

    goto :goto_0

    :cond_3
    const-string v0, "lbs"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-wide v0, 0x3f3dba046515e19aL    # 4.5359237E-4

    goto :goto_0

    :cond_4
    const-string v0, "kg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    :goto_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    mul-double/2addr v2, v0

    :catch_0
    return-wide v2
.end method
