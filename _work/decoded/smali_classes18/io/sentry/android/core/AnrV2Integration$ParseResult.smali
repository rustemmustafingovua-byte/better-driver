.class final Lio/sentry/android/core/AnrV2Integration$ParseResult;
.super Ljava/lang/Object;
.source "AnrV2Integration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/AnrV2Integration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ParseResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;
    }
.end annotation


# instance fields
.field final artContext:Lio/sentry/protocol/ArtContext;

.field final debugImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/protocol/DebugImage;",
            ">;"
        }
    .end annotation
.end field

.field final dump:[B

.field final threads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryThread;",
            ">;"
        }
    .end annotation
.end field

.field final type:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;


# direct methods
.method constructor <init>(Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;)V
    .locals 1
    .param p1, "type"    # Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput-object p1, p0, Lio/sentry/android/core/AnrV2Integration$ParseResult;->type:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/AnrV2Integration$ParseResult;->dump:[B

    .line 307
    iput-object v0, p0, Lio/sentry/android/core/AnrV2Integration$ParseResult;->threads:Ljava/util/List;

    .line 308
    iput-object v0, p0, Lio/sentry/android/core/AnrV2Integration$ParseResult;->debugImages:Ljava/util/List;

    .line 309
    iput-object v0, p0, Lio/sentry/android/core/AnrV2Integration$ParseResult;->artContext:Lio/sentry/protocol/ArtContext;

    .line 310
    return-void
.end method

.method constructor <init>(Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;[B)V
    .locals 1
    .param p1, "type"    # Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;
    .param p2, "dump"    # [B

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput-object p1, p0, Lio/sentry/android/core/AnrV2Integration$ParseResult;->type:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    .line 314
    iput-object p2, p0, Lio/sentry/android/core/AnrV2Integration$ParseResult;->dump:[B

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/AnrV2Integration$ParseResult;->threads:Ljava/util/List;

    .line 316
    iput-object v0, p0, Lio/sentry/android/core/AnrV2Integration$ParseResult;->debugImages:Ljava/util/List;

    .line 317
    iput-object v0, p0, Lio/sentry/android/core/AnrV2Integration$ParseResult;->artContext:Lio/sentry/protocol/ArtContext;

    .line 318
    return-void
.end method

.method constructor <init>(Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;[BLjava/util/List;Ljava/util/List;Lio/sentry/protocol/ArtContext;)V
    .locals 0
    .param p1, "type"    # Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;
    .param p2, "dump"    # [B
    .param p5, "artContext"    # Lio/sentry/protocol/ArtContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;",
            "[B",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryThread;",
            ">;",
            "Ljava/util/List<",
            "Lio/sentry/protocol/DebugImage;",
            ">;",
            "Lio/sentry/protocol/ArtContext;",
            ")V"
        }
    .end annotation

    .line 325
    .local p3, "threads":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryThread;>;"
    .local p4, "debugImages":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/DebugImage;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    iput-object p1, p0, Lio/sentry/android/core/AnrV2Integration$ParseResult;->type:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    .line 327
    iput-object p2, p0, Lio/sentry/android/core/AnrV2Integration$ParseResult;->dump:[B

    .line 328
    iput-object p3, p0, Lio/sentry/android/core/AnrV2Integration$ParseResult;->threads:Ljava/util/List;

    .line 329
    iput-object p4, p0, Lio/sentry/android/core/AnrV2Integration$ParseResult;->debugImages:Ljava/util/List;

    .line 330
    iput-object p5, p0, Lio/sentry/android/core/AnrV2Integration$ParseResult;->artContext:Lio/sentry/protocol/ArtContext;

    .line 331
    return-void
.end method
