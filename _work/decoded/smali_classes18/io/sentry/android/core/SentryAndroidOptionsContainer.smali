.class final Lio/sentry/android/core/SentryAndroidOptionsContainer;
.super Lio/sentry/OptionsContainer;
.source "SentryAndroidOptionsContainer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/sentry/OptionsContainer<",
        "Lio/sentry/android/core/SentryAndroidOptions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lio/sentry/OptionsContainer;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance()Lio/sentry/android/core/SentryAndroidOptions;
    .locals 1

    .line 14
    new-instance v0, Lio/sentry/android/core/SentryAndroidOptions;

    invoke-direct {v0}, Lio/sentry/android/core/SentryAndroidOptions;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptionsContainer;->createInstance()Lio/sentry/android/core/SentryAndroidOptions;

    move-result-object v0

    return-object v0
.end method
