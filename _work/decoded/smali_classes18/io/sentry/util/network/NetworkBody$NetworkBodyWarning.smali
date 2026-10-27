.class public final enum Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;
.super Ljava/lang/Enum;
.source "NetworkBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/util/network/NetworkBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkBodyWarning"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;

.field public static final enum BODY_PARSE_ERROR:Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;

.field public static final enum INVALID_JSON:Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;

.field public static final enum JSON_TRUNCATED:Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;

.field public static final enum TEXT_TRUNCATED:Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;
    .locals 4

    .line 53
    sget-object v0, Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;->JSON_TRUNCATED:Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;

    sget-object v1, Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;->TEXT_TRUNCATED:Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;

    sget-object v2, Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;->INVALID_JSON:Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;

    sget-object v3, Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;->BODY_PARSE_ERROR:Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;

    filled-new-array {v0, v1, v2, v3}, [Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 54
    new-instance v0, Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;

    const-string v1, "JSON_TRUNCATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;->JSON_TRUNCATED:Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;

    .line 55
    new-instance v0, Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;

    const-string v1, "TEXT_TRUNCATED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;->TEXT_TRUNCATED:Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;

    .line 56
    new-instance v0, Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;

    const-string v1, "INVALID_JSON"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;->INVALID_JSON:Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;

    .line 57
    new-instance v0, Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;

    const-string v1, "BODY_PARSE_ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;->BODY_PARSE_ERROR:Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;

    .line 53
    invoke-static {}, Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;->$values()[Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;

    move-result-object v0

    sput-object v0, Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;->$VALUES:[Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput-object p3, p0, Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;->value:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;
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

    .line 53
    const-class v0, Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;

    return-object v0
.end method

.method public static values()[Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;
    .locals 1

    .line 53
    sget-object v0, Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;->$VALUES:[Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;

    invoke-virtual {v0}, [Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;->value:Ljava/lang/String;

    return-object v0
.end method
