.class interface abstract Lio/sentry/android/core/SentryRootCaSslSocketFactory$SystemTrustedIssuersProvider;
.super Ljava/lang/Object;
.source "SentryRootCaSslSocketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/SentryRootCaSslSocketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "SystemTrustedIssuersProvider"
.end annotation


# virtual methods
.method public abstract getSystemTrustedIssuers()[Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
