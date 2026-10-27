.class public final enum Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;
.super Ljava/lang/Enum;
.source "NativeExceptionMechanism.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

.field public static final enum SIGNAL_HANDLER:Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

.field public static final enum TOMBSTONE:Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

.field public static final enum TOMBSTONE_MERGED:Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;
    .locals 3

    .line 6
    sget-object v0, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;->TOMBSTONE:Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

    sget-object v1, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;->SIGNAL_HANDLER:Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

    sget-object v2, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;->TOMBSTONE_MERGED:Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

    filled-new-array {v0, v1, v2}, [Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

    const/4 v1, 0x0

    const-string v2, "Tombstone"

    const-string v3, "TOMBSTONE"

    invoke-direct {v0, v3, v1, v2}, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;->TOMBSTONE:Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

    .line 8
    new-instance v0, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

    const/4 v1, 0x1

    const-string v2, "signalhandler"

    const-string v3, "SIGNAL_HANDLER"

    invoke-direct {v0, v3, v1, v2}, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;->SIGNAL_HANDLER:Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

    .line 9
    new-instance v0, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

    const/4 v1, 0x2

    const-string v2, "TombstoneMerged"

    const-string v3, "TOMBSTONE_MERGED"

    invoke-direct {v0, v3, v1, v2}, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;->TOMBSTONE_MERGED:Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

    .line 6
    invoke-static {}, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;->$values()[Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;->$VALUES:[Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10
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

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-object p3, p0, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;->value:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;
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

    .line 6
    const-class v0, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

    return-object v0
.end method

.method public static values()[Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;
    .locals 1

    .line 6
    sget-object v0, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;->$VALUES:[Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

    invoke-virtual {v0}, [Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;->value:Ljava/lang/String;

    return-object v0
.end method
