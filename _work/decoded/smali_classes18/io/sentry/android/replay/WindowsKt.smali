.class public final Lio/sentry/android/replay/WindowsKt;
.super Ljava/lang/Object;
.source "Windows.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u001a\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00028@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "phoneWindow",
        "Landroid/view/Window;",
        "Landroid/view/View;",
        "getPhoneWindow",
        "(Landroid/view/View;)Landroid/view/Window;",
        "sentry-android-replay_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getPhoneWindow(Landroid/view/View;)Landroid/view/Window;
    .locals 3
    .param p0, "$this$phoneWindow"    # Landroid/view/View;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lio/sentry/android/replay/WindowSpy;->INSTANCE:Lio/sentry/android/replay/WindowSpy;

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    const-string v2, "getRootView(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/sentry/android/replay/WindowSpy;->pullWindow(Landroid/view/View;)Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method
