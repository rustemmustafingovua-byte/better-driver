.class final Lio/sentry/android/replay/ReplayCache$rotate$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ReplayCache.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/replay/ReplayCache;->rotate$sentry_android_replay_release(J)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/sentry/android/replay/ReplayFrame;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lio/sentry/android/replay/ReplayFrame;",
        "invoke",
        "(Lio/sentry/android/replay/ReplayFrame;)Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $screen:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $until:J

.field final synthetic this$0:Lio/sentry/android/replay/ReplayCache;


# direct methods
.method constructor <init>(JLio/sentry/android/replay/ReplayCache;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/sentry/android/replay/ReplayCache;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lio/sentry/android/replay/ReplayCache$rotate$1$1;->$until:J

    iput-object p3, p0, Lio/sentry/android/replay/ReplayCache$rotate$1$1;->this$0:Lio/sentry/android/replay/ReplayCache;

    iput-object p4, p0, Lio/sentry/android/replay/ReplayCache$rotate$1$1;->$screen:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lio/sentry/android/replay/ReplayFrame;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "it"    # Lio/sentry/android/replay/ReplayFrame;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    invoke-virtual {p1}, Lio/sentry/android/replay/ReplayFrame;->getTimestamp()J

    move-result-wide v0

    iget-wide v2, p0, Lio/sentry/android/replay/ReplayCache$rotate$1$1;->$until:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 265
    iget-object v0, p0, Lio/sentry/android/replay/ReplayCache$rotate$1$1;->this$0:Lio/sentry/android/replay/ReplayCache;

    invoke-virtual {p1}, Lio/sentry/android/replay/ReplayFrame;->getScreenshot()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lio/sentry/android/replay/ReplayCache;->access$deleteFile(Lio/sentry/android/replay/ReplayCache;Ljava/io/File;)V

    .line 266
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 267
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/ReplayCache$rotate$1$1;->$screen:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 268
    iget-object v0, p0, Lio/sentry/android/replay/ReplayCache$rotate$1$1;->$screen:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-virtual {p1}, Lio/sentry/android/replay/ReplayFrame;->getScreen()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 270
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 263
    move-object v0, p1

    check-cast v0, Lio/sentry/android/replay/ReplayFrame;

    invoke-virtual {p0, v0}, Lio/sentry/android/replay/ReplayCache$rotate$1$1;->invoke(Lio/sentry/android/replay/ReplayFrame;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
