.class public final enum Lio/sentry/KeyValueCollectionBehavior$Mode;
.super Ljava/lang/Enum;
.source "KeyValueCollectionBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/KeyValueCollectionBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/KeyValueCollectionBehavior$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/KeyValueCollectionBehavior$Mode;

.field public static final enum ALLOW_LIST:Lio/sentry/KeyValueCollectionBehavior$Mode;

.field public static final enum DENY_LIST:Lio/sentry/KeyValueCollectionBehavior$Mode;

.field public static final enum OFF:Lio/sentry/KeyValueCollectionBehavior$Mode;


# direct methods
.method private static synthetic $values()[Lio/sentry/KeyValueCollectionBehavior$Mode;
    .locals 3

    .line 14
    sget-object v0, Lio/sentry/KeyValueCollectionBehavior$Mode;->OFF:Lio/sentry/KeyValueCollectionBehavior$Mode;

    sget-object v1, Lio/sentry/KeyValueCollectionBehavior$Mode;->DENY_LIST:Lio/sentry/KeyValueCollectionBehavior$Mode;

    sget-object v2, Lio/sentry/KeyValueCollectionBehavior$Mode;->ALLOW_LIST:Lio/sentry/KeyValueCollectionBehavior$Mode;

    filled-new-array {v0, v1, v2}, [Lio/sentry/KeyValueCollectionBehavior$Mode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Lio/sentry/KeyValueCollectionBehavior$Mode;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/KeyValueCollectionBehavior$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/KeyValueCollectionBehavior$Mode;->OFF:Lio/sentry/KeyValueCollectionBehavior$Mode;

    .line 18
    new-instance v0, Lio/sentry/KeyValueCollectionBehavior$Mode;

    const-string v1, "DENY_LIST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/sentry/KeyValueCollectionBehavior$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/KeyValueCollectionBehavior$Mode;->DENY_LIST:Lio/sentry/KeyValueCollectionBehavior$Mode;

    .line 20
    new-instance v0, Lio/sentry/KeyValueCollectionBehavior$Mode;

    const-string v1, "ALLOW_LIST"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/sentry/KeyValueCollectionBehavior$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/KeyValueCollectionBehavior$Mode;->ALLOW_LIST:Lio/sentry/KeyValueCollectionBehavior$Mode;

    .line 14
    invoke-static {}, Lio/sentry/KeyValueCollectionBehavior$Mode;->$values()[Lio/sentry/KeyValueCollectionBehavior$Mode;

    move-result-object v0

    sput-object v0, Lio/sentry/KeyValueCollectionBehavior$Mode;->$VALUES:[Lio/sentry/KeyValueCollectionBehavior$Mode;

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

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/KeyValueCollectionBehavior$Mode;
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

    .line 14
    const-class v0, Lio/sentry/KeyValueCollectionBehavior$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/sentry/KeyValueCollectionBehavior$Mode;

    return-object v0
.end method

.method public static values()[Lio/sentry/KeyValueCollectionBehavior$Mode;
    .locals 1

    .line 14
    sget-object v0, Lio/sentry/KeyValueCollectionBehavior$Mode;->$VALUES:[Lio/sentry/KeyValueCollectionBehavior$Mode;

    invoke-virtual {v0}, [Lio/sentry/KeyValueCollectionBehavior$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/KeyValueCollectionBehavior$Mode;

    return-object v0
.end method
