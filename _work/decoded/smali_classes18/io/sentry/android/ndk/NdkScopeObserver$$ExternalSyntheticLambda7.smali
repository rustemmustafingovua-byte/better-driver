.class public final synthetic Lio/sentry/android/ndk/NdkScopeObserver$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/ndk/NdkScopeObserver;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/ndk/NdkScopeObserver;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/ndk/NdkScopeObserver$$ExternalSyntheticLambda7;->f$0:Lio/sentry/android/ndk/NdkScopeObserver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lio/sentry/android/ndk/NdkScopeObserver$$ExternalSyntheticLambda7;->f$0:Lio/sentry/android/ndk/NdkScopeObserver;

    invoke-virtual {v0}, Lio/sentry/android/ndk/NdkScopeObserver;->lambda$clearAttachments$9$io-sentry-android-ndk-NdkScopeObserver()V

    return-void
.end method
