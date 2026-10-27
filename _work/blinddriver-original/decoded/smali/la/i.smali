.class public final Lla/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lla/b;

.field public static final c:Lla/h;

.field public static final d:Ljava/util/LinkedHashMap;

.field public static final e:Lla/i;

.field public static final f:Lla/i;

.field public static final g:Lla/i;

.field public static final h:Lla/i;

.field public static final i:Lla/i;

.field public static final j:Lla/i;

.field public static final k:Lla/i;

.field public static final l:Lla/i;

.field public static final m:Lla/i;

.field public static final n:Lla/i;

.field public static final o:Lla/i;

.field public static final p:Lla/i;

.field public static final q:Lla/i;

.field public static final r:Lla/i;

.field public static final s:Lla/i;

.field public static final t:Lla/i;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lla/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lla/i;->b:Lla/b;

    new-instance v1, Lla/h;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lla/i;->c:Lla/h;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v1, Lla/i;->d:Ljava/util/LinkedHashMap;

    const-string v1, "SSL_RSA_WITH_NULL_MD5"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "SSL_RSA_WITH_NULL_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "SSL_RSA_WITH_RC4_128_MD5"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "SSL_RSA_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "SSL_RSA_WITH_DES_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    move-result-object v1

    sput-object v1, Lla/i;->e:Lla/i;

    const-string v1, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "SSL_DHE_DSS_WITH_DES_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "SSL_DH_anon_WITH_RC4_128_MD5"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "SSL_DH_anon_WITH_DES_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_KRB5_WITH_DES_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_KRB5_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_KRB5_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_KRB5_WITH_DES_CBC_MD5"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_KRB5_WITH_3DES_EDE_CBC_MD5"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_KRB5_WITH_RC4_128_MD5"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_KRB5_EXPORT_WITH_RC4_40_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_KRB5_EXPORT_WITH_RC4_40_MD5"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    move-result-object v1

    sput-object v1, Lla/i;->f:Lla/i;

    const-string v1, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    move-result-object v1

    sput-object v1, Lla/i;->g:Lla/i;

    const-string v1, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_DH_anon_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_RSA_WITH_NULL_SHA256"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_RSA_WITH_AES_256_CBC_SHA256"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_RSA_WITH_CAMELLIA_128_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_DH_anon_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_DH_anon_WITH_AES_256_CBC_SHA256"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_RSA_WITH_CAMELLIA_256_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_PSK_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_PSK_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_PSK_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_PSK_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_RSA_WITH_SEED_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    move-result-object v1

    sput-object v1, Lla/i;->h:Lla/i;

    const-string v1, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    move-result-object v1

    sput-object v1, Lla/i;->i:Lla/i;

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_DH_anon_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_DH_anon_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_FALLBACK_SCSV"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_ECDH_ECDSA_WITH_NULL_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_NULL_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_ECDH_RSA_WITH_NULL_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_ECDHE_RSA_WITH_NULL_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    move-result-object v1

    sput-object v1, Lla/i;->j:Lla/i;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    move-result-object v1

    sput-object v1, Lla/i;->k:Lla/i;

    const-string v1, "TLS_ECDH_anon_WITH_NULL_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_ECDH_anon_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    move-result-object v1

    sput-object v1, Lla/i;->l:Lla/i;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    move-result-object v1

    sput-object v1, Lla/i;->m:Lla/i;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    move-result-object v1

    sput-object v1, Lla/i;->n:Lla/i;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    move-result-object v1

    sput-object v1, Lla/i;->o:Lla/i;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    move-result-object v1

    sput-object v1, Lla/i;->p:Lla/i;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    move-result-object v1

    sput-object v1, Lla/i;->q:Lla/i;

    const-string v1, "TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    move-result-object v1

    sput-object v1, Lla/i;->r:Lla/i;

    const-string v1, "TLS_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    move-result-object v1

    sput-object v1, Lla/i;->s:Lla/i;

    const-string v1, "TLS_CHACHA20_POLY1305_SHA256"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    move-result-object v1

    sput-object v1, Lla/i;->t:Lla/i;

    const-string v1, "TLS_AES_128_CCM_SHA256"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    const-string v1, "TLS_AES_128_CCM_8_SHA256"

    invoke-static {v0, v1}, Lla/b;->a(Lla/b;Ljava/lang/String;)Lla/i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lla/i;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lla/i;->a:Ljava/lang/String;

    return-object p0
.end method
