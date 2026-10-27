.class final enum Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;
.super Ljava/lang/Enum;
.source "InternalSentrySdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/InternalSentrySdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EnvelopeEventState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;

.field public static final enum ERRORED:Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;

.field public static final enum NONE:Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;

.field public static final enum UNHANDLED:Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;


# direct methods
.method private static synthetic $values()[Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;
    .locals 3

    .line 321
    sget-object v0, Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;->NONE:Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;

    sget-object v1, Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;->ERRORED:Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;

    sget-object v2, Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;->UNHANDLED:Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;

    filled-new-array {v0, v1, v2}, [Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 323
    new-instance v0, Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;->NONE:Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;

    .line 325
    new-instance v0, Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;

    const-string v1, "ERRORED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;->ERRORED:Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;

    .line 327
    new-instance v0, Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;

    const-string v1, "UNHANDLED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;->UNHANDLED:Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;

    .line 321
    invoke-static {}, Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;->$values()[Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;->$VALUES:[Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;

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

    .line 321
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;
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

    .line 321
    const-class v0, Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;

    return-object v0
.end method

.method public static values()[Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;
    .locals 1

    .line 321
    sget-object v0, Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;->$VALUES:[Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;

    invoke-virtual {v0}, [Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/android/core/InternalSentrySdk$EnvelopeEventState;

    return-object v0
.end method
