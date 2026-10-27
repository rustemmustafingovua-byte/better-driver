.class final Lio/sentry/android/core/SentryRootCaSslSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SentryRootCaSslSocketFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/SentryRootCaSslSocketFactory$SystemTrustedIssuersProvider;
    }
.end annotation


# static fields
.field static final SENTRY_ROOT_CA_ALIAS_PREFIX:Ljava/lang/String; = "sentry-root-ca-"


# instance fields
.field private final delegate:Lio/sentry/util/LazyEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/util/LazyEvaluator<",
            "Ljavax/net/ssl/SSLSocketFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$YszRPix2gY9Fi2_mYzmxwwt0lxM()[Ljava/security/cert/X509Certificate;
    .locals 1

    invoke-static {}, Lio/sentry/android/core/SentryRootCaSslSocketFactory;->getSystemTrustedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Lio/sentry/ILogger;)V
    .locals 1
    .param p1, "logger"    # Lio/sentry/ILogger;

    .line 67
    new-instance v0, Lio/sentry/android/core/SentryRootCaSslSocketFactory$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lio/sentry/android/core/SentryRootCaSslSocketFactory$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/SentryRootCaSslSocketFactory;-><init>(Lio/sentry/ILogger;Lio/sentry/android/core/SentryRootCaSslSocketFactory$SystemTrustedIssuersProvider;)V

    .line 68
    return-void
.end method

.method constructor <init>(Lio/sentry/ILogger;Lio/sentry/android/core/SentryRootCaSslSocketFactory$SystemTrustedIssuersProvider;)V
    .locals 2
    .param p1, "logger"    # Lio/sentry/ILogger;
    .param p2, "systemTrustedIssuersProvider"    # Lio/sentry/android/core/SentryRootCaSslSocketFactory$SystemTrustedIssuersProvider;

    .line 73
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 74
    new-instance v0, Lio/sentry/util/LazyEvaluator;

    new-instance v1, Lio/sentry/android/core/SentryRootCaSslSocketFactory$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lio/sentry/android/core/SentryRootCaSslSocketFactory$$ExternalSyntheticLambda0;-><init>(Lio/sentry/ILogger;Lio/sentry/android/core/SentryRootCaSslSocketFactory$SystemTrustedIssuersProvider;)V

    invoke-direct {v0, v1}, Lio/sentry/util/LazyEvaluator;-><init>(Lio/sentry/util/LazyEvaluator$Evaluator;)V

    iput-object v0, p0, Lio/sentry/android/core/SentryRootCaSslSocketFactory;->delegate:Lio/sentry/util/LazyEvaluator;

    .line 75
    return-void
.end method

.method private static createDelegate(Lio/sentry/ILogger;Lio/sentry/android/core/SentryRootCaSslSocketFactory$SystemTrustedIssuersProvider;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 4
    .param p0, "logger"    # Lio/sentry/ILogger;
    .param p1, "systemTrustedIssuersProvider"    # Lio/sentry/android/core/SentryRootCaSslSocketFactory$SystemTrustedIssuersProvider;

    .line 100
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 101
    .local v0, "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    nop

    .line 102
    invoke-interface {p1}, Lio/sentry/android/core/SentryRootCaSslSocketFactory$SystemTrustedIssuersProvider;->getSystemTrustedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-static {v1}, Lio/sentry/android/core/SentryRootCaSslSocketFactory;->createTrustStore([Ljava/security/cert/X509Certificate;)Ljava/security/KeyStore;

    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 104
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 105
    .local v1, "sslContext":Ljavax/net/ssl/SSLContext;
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 106
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 107
    .end local v0    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .end local v1    # "sslContext":Ljavax/net/ssl/SSLContext;
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Failed to create SSLSocketFactory with bundled Sentry root CAs, using the default one."

    invoke-interface {p0, v1, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    return-object v1
.end method

.method static createTrustStore([Ljava/security/cert/X509Certificate;)Ljava/security/KeyStore;
    .locals 6
    .param p0, "systemTrustedIssuers"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 142
    .local v0, "keyStore":Ljava/security/KeyStore;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 143
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "system-ca-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v0, v2, v3}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v1    # "i":I
    :cond_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 147
    .local v1, "certificateFactory":Ljava/security/cert/CertificateFactory;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v3, Lio/sentry/android/core/SentryRootCertificates;->ALL:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 148
    new-instance v3, Ljava/io/ByteArrayInputStream;

    sget-object v4, Lio/sentry/android/core/SentryRootCertificates;->ALL:[Ljava/lang/String;

    aget-object v4, v4, v2

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 151
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 149
    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    .line 152
    .local v3, "certificate":Ljava/security/cert/Certificate;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sentry-root-ca-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 147
    .end local v3    # "certificate":Ljava/security/cert/Certificate;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 154
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method private static getSystemTrustedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 125
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 126
    .local v0, "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/security/KeyStore;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 127
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 128
    .local v4, "trustManager":Ljavax/net/ssl/TrustManager;
    instance-of v5, v4, Ljavax/net/ssl/X509TrustManager;

    if-eqz v5, :cond_0

    .line 129
    move-object v1, v4

    check-cast v1, Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v1}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1

    .line 127
    .end local v4    # "trustManager":Ljavax/net/ssl/TrustManager;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 132
    :cond_1
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "No default X509TrustManager available"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static isSentrySaasDsn(Ljava/lang/String;)Z
    .locals 4
    .param p0, "dsn"    # Ljava/lang/String;

    .line 84
    invoke-static {p0}, Lio/sentry/DsnUtil;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "host":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 86
    return v1

    .line 88
    :cond_0
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 89
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_1
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 92
    const-string v2, "sentry.io"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ".sentry.io"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v1, v3

    :cond_3
    return v1
.end method

.method static synthetic lambda$new$0(Lio/sentry/ILogger;Lio/sentry/android/core/SentryRootCaSslSocketFactory$SystemTrustedIssuersProvider;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 1
    .param p0, "logger"    # Lio/sentry/ILogger;
    .param p1, "systemTrustedIssuersProvider"    # Lio/sentry/android/core/SentryRootCaSslSocketFactory$SystemTrustedIssuersProvider;

    .line 74
    invoke-static {p0, p1}, Lio/sentry/android/core/SentryRootCaSslSocketFactory;->createDelegate(Lio/sentry/ILogger;Lio/sentry/android/core/SentryRootCaSslSocketFactory$SystemTrustedIssuersProvider;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lio/sentry/android/core/SentryRootCaSslSocketFactory;->delegate:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lio/sentry/android/core/SentryRootCaSslSocketFactory;->delegate:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localHost"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lio/sentry/android/core/SentryRootCaSslSocketFactory;->delegate:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lio/sentry/android/core/SentryRootCaSslSocketFactory;->delegate:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lio/sentry/android/core/SentryRootCaSslSocketFactory;->delegate:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lio/sentry/android/core/SentryRootCaSslSocketFactory;->delegate:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lio/sentry/android/core/SentryRootCaSslSocketFactory;->delegate:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getDelegate()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 160
    iget-object v0, p0, Lio/sentry/android/core/SentryRootCaSslSocketFactory;->delegate:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lio/sentry/android/core/SentryRootCaSslSocketFactory;->delegate:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
