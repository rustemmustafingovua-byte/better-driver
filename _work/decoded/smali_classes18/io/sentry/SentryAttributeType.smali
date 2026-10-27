.class public final enum Lio/sentry/SentryAttributeType;
.super Ljava/lang/Enum;
.source "SentryAttributeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/SentryAttributeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/SentryAttributeType;

.field public static final enum ARRAY:Lio/sentry/SentryAttributeType;

.field public static final enum BOOLEAN:Lio/sentry/SentryAttributeType;

.field public static final enum DOUBLE:Lio/sentry/SentryAttributeType;

.field public static final enum INTEGER:Lio/sentry/SentryAttributeType;

.field public static final enum STRING:Lio/sentry/SentryAttributeType;


# direct methods
.method private static synthetic $values()[Lio/sentry/SentryAttributeType;
    .locals 5

    .line 11
    sget-object v0, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    sget-object v1, Lio/sentry/SentryAttributeType;->BOOLEAN:Lio/sentry/SentryAttributeType;

    sget-object v2, Lio/sentry/SentryAttributeType;->INTEGER:Lio/sentry/SentryAttributeType;

    sget-object v3, Lio/sentry/SentryAttributeType;->DOUBLE:Lio/sentry/SentryAttributeType;

    sget-object v4, Lio/sentry/SentryAttributeType;->ARRAY:Lio/sentry/SentryAttributeType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lio/sentry/SentryAttributeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lio/sentry/SentryAttributeType;

    const-string v1, "STRING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/SentryAttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    .line 13
    new-instance v0, Lio/sentry/SentryAttributeType;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/sentry/SentryAttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/SentryAttributeType;->BOOLEAN:Lio/sentry/SentryAttributeType;

    .line 14
    new-instance v0, Lio/sentry/SentryAttributeType;

    const-string v1, "INTEGER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/sentry/SentryAttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/SentryAttributeType;->INTEGER:Lio/sentry/SentryAttributeType;

    .line 15
    new-instance v0, Lio/sentry/SentryAttributeType;

    const-string v1, "DOUBLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/sentry/SentryAttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/SentryAttributeType;->DOUBLE:Lio/sentry/SentryAttributeType;

    .line 16
    new-instance v0, Lio/sentry/SentryAttributeType;

    const-string v1, "ARRAY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/sentry/SentryAttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/SentryAttributeType;->ARRAY:Lio/sentry/SentryAttributeType;

    .line 11
    invoke-static {}, Lio/sentry/SentryAttributeType;->$values()[Lio/sentry/SentryAttributeType;

    move-result-object v0

    sput-object v0, Lio/sentry/SentryAttributeType;->$VALUES:[Lio/sentry/SentryAttributeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static inferFrom(Ljava/lang/Object;)Lio/sentry/SentryAttributeType;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .line 23
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 24
    sget-object v0, Lio/sentry/SentryAttributeType;->BOOLEAN:Lio/sentry/SentryAttributeType;

    return-object v0

    .line 26
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/math/BigInteger;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 35
    :cond_1
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 36
    sget-object v0, Lio/sentry/SentryAttributeType;->DOUBLE:Lio/sentry/SentryAttributeType;

    return-object v0

    .line 38
    :cond_2
    instance-of v0, p0, Ljava/util/Collection;

    if-nez v0, :cond_4

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 41
    :cond_3
    sget-object v0, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    return-object v0

    .line 39
    :cond_4
    :goto_0
    sget-object v0, Lio/sentry/SentryAttributeType;->ARRAY:Lio/sentry/SentryAttributeType;

    return-object v0

    .line 33
    :cond_5
    :goto_1
    sget-object v0, Lio/sentry/SentryAttributeType;->INTEGER:Lio/sentry/SentryAttributeType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/SentryAttributeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 11
    const-class v0, Lio/sentry/SentryAttributeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryAttributeType;

    return-object v0
.end method

.method public static values()[Lio/sentry/SentryAttributeType;
    .locals 1

    .line 11
    sget-object v0, Lio/sentry/SentryAttributeType;->$VALUES:[Lio/sentry/SentryAttributeType;

    invoke-virtual {v0}, [Lio/sentry/SentryAttributeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/SentryAttributeType;

    return-object v0
.end method


# virtual methods
.method public apiName()Ljava/lang/String;
    .locals 2

    .line 19
    invoke-virtual {p0}, Lio/sentry/SentryAttributeType;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
