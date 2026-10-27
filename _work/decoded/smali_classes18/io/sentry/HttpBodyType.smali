.class public final enum Lio/sentry/HttpBodyType;
.super Ljava/lang/Enum;
.source "HttpBodyType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/HttpBodyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/HttpBodyType;

.field public static final enum INCOMING_REQUEST:Lio/sentry/HttpBodyType;

.field public static final enum INCOMING_RESPONSE:Lio/sentry/HttpBodyType;

.field public static final enum OUTGOING_REQUEST:Lio/sentry/HttpBodyType;

.field public static final enum OUTGOING_RESPONSE:Lio/sentry/HttpBodyType;


# direct methods
.method private static synthetic $values()[Lio/sentry/HttpBodyType;
    .locals 4

    .line 4
    sget-object v0, Lio/sentry/HttpBodyType;->INCOMING_REQUEST:Lio/sentry/HttpBodyType;

    sget-object v1, Lio/sentry/HttpBodyType;->OUTGOING_REQUEST:Lio/sentry/HttpBodyType;

    sget-object v2, Lio/sentry/HttpBodyType;->INCOMING_RESPONSE:Lio/sentry/HttpBodyType;

    sget-object v3, Lio/sentry/HttpBodyType;->OUTGOING_RESPONSE:Lio/sentry/HttpBodyType;

    filled-new-array {v0, v1, v2, v3}, [Lio/sentry/HttpBodyType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 6
    new-instance v0, Lio/sentry/HttpBodyType;

    const-string v1, "INCOMING_REQUEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/HttpBodyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/HttpBodyType;->INCOMING_REQUEST:Lio/sentry/HttpBodyType;

    .line 8
    new-instance v0, Lio/sentry/HttpBodyType;

    const-string v1, "OUTGOING_REQUEST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/sentry/HttpBodyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/HttpBodyType;->OUTGOING_REQUEST:Lio/sentry/HttpBodyType;

    .line 10
    new-instance v0, Lio/sentry/HttpBodyType;

    const-string v1, "INCOMING_RESPONSE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/sentry/HttpBodyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/HttpBodyType;->INCOMING_RESPONSE:Lio/sentry/HttpBodyType;

    .line 12
    new-instance v0, Lio/sentry/HttpBodyType;

    const-string v1, "OUTGOING_RESPONSE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/sentry/HttpBodyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/HttpBodyType;->OUTGOING_RESPONSE:Lio/sentry/HttpBodyType;

    .line 4
    invoke-static {}, Lio/sentry/HttpBodyType;->$values()[Lio/sentry/HttpBodyType;

    move-result-object v0

    sput-object v0, Lio/sentry/HttpBodyType;->$VALUES:[Lio/sentry/HttpBodyType;

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

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/HttpBodyType;
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

    .line 4
    const-class v0, Lio/sentry/HttpBodyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/sentry/HttpBodyType;

    return-object v0
.end method

.method public static values()[Lio/sentry/HttpBodyType;
    .locals 1

    .line 4
    sget-object v0, Lio/sentry/HttpBodyType;->$VALUES:[Lio/sentry/HttpBodyType;

    invoke-virtual {v0}, [Lio/sentry/HttpBodyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/HttpBodyType;

    return-object v0
.end method
