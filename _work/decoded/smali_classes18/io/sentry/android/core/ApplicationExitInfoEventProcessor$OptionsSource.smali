.class final enum Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;
.super Ljava/lang/Enum;
.source "ApplicationExitInfoEventProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/ApplicationExitInfoEventProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "OptionsSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

.field public static final enum CURRENT:Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

.field public static final enum NONE:Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

.field public static final enum PERSISTED:Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

.field public static final enum PERSISTED_WITH_CURRENT_FALLBACK:Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;


# direct methods
.method private static synthetic $values()[Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;
    .locals 4

    .line 650
    sget-object v0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;->CURRENT:Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    sget-object v1, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;->PERSISTED:Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    sget-object v2, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;->PERSISTED_WITH_CURRENT_FALLBACK:Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    sget-object v3, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;->NONE:Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    filled-new-array {v0, v1, v2, v3}, [Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 651
    new-instance v0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    const-string v1, "CURRENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;->CURRENT:Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    .line 652
    new-instance v0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    const-string v1, "PERSISTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;->PERSISTED:Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    .line 653
    new-instance v0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    const-string v1, "PERSISTED_WITH_CURRENT_FALLBACK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;->PERSISTED_WITH_CURRENT_FALLBACK:Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    .line 654
    new-instance v0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    const-string v1, "NONE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;->NONE:Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    .line 650
    invoke-static {}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;->$values()[Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;->$VALUES:[Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

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

    .line 650
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;
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

    .line 650
    const-class v0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    return-object v0
.end method

.method public static values()[Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;
    .locals 1

    .line 650
    sget-object v0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;->$VALUES:[Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    invoke-virtual {v0}, [Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    return-object v0
.end method
