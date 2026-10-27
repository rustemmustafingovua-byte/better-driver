.class public final enum Lio/sentry/ScreenshotStrategyType;
.super Ljava/lang/Enum;
.source "ScreenshotStrategyType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/ScreenshotStrategyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/ScreenshotStrategyType;

.field public static final enum CANVAS:Lio/sentry/ScreenshotStrategyType;

.field public static final enum PIXEL_COPY:Lio/sentry/ScreenshotStrategyType;


# direct methods
.method private static synthetic $values()[Lio/sentry/ScreenshotStrategyType;
    .locals 2

    .line 6
    sget-object v0, Lio/sentry/ScreenshotStrategyType;->CANVAS:Lio/sentry/ScreenshotStrategyType;

    sget-object v1, Lio/sentry/ScreenshotStrategyType;->PIXEL_COPY:Lio/sentry/ScreenshotStrategyType;

    filled-new-array {v0, v1}, [Lio/sentry/ScreenshotStrategyType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 9
    new-instance v0, Lio/sentry/ScreenshotStrategyType;

    const-string v1, "CANVAS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/ScreenshotStrategyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/ScreenshotStrategyType;->CANVAS:Lio/sentry/ScreenshotStrategyType;

    .line 11
    new-instance v0, Lio/sentry/ScreenshotStrategyType;

    const-string v1, "PIXEL_COPY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/sentry/ScreenshotStrategyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/ScreenshotStrategyType;->PIXEL_COPY:Lio/sentry/ScreenshotStrategyType;

    .line 6
    invoke-static {}, Lio/sentry/ScreenshotStrategyType;->$values()[Lio/sentry/ScreenshotStrategyType;

    move-result-object v0

    sput-object v0, Lio/sentry/ScreenshotStrategyType;->$VALUES:[Lio/sentry/ScreenshotStrategyType;

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

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/ScreenshotStrategyType;
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
    const-class v0, Lio/sentry/ScreenshotStrategyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/sentry/ScreenshotStrategyType;

    return-object v0
.end method

.method public static values()[Lio/sentry/ScreenshotStrategyType;
    .locals 1

    .line 6
    sget-object v0, Lio/sentry/ScreenshotStrategyType;->$VALUES:[Lio/sentry/ScreenshotStrategyType;

    invoke-virtual {v0}, [Lio/sentry/ScreenshotStrategyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/ScreenshotStrategyType;

    return-object v0
.end method
