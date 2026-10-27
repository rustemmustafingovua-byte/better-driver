.class Lio/sentry/SentryEnvelopeItem$CachedItem;
.super Ljava/lang/Object;
.source "SentryEnvelopeItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryEnvelopeItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedItem"
.end annotation


# instance fields
.field private bytes:[B

.field private final dataFactory:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "[B>;)V"
        }
    .end annotation

    .line 694
    .local p1, "dataFactory":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    iput-object p1, p0, Lio/sentry/SentryEnvelopeItem$CachedItem;->dataFactory:Ljava/util/concurrent/Callable;

    .line 696
    return-void
.end method

.method private static orEmptyArray([B)[B
    .locals 1
    .param p0, "bytes"    # [B

    .line 707
    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_0
    return-object v0
.end method


# virtual methods
.method getBytes()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 700
    iget-object v0, p0, Lio/sentry/SentryEnvelopeItem$CachedItem;->bytes:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/sentry/SentryEnvelopeItem$CachedItem;->dataFactory:Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lio/sentry/SentryEnvelopeItem$CachedItem;->dataFactory:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lio/sentry/SentryEnvelopeItem$CachedItem;->bytes:[B

    .line 703
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryEnvelopeItem$CachedItem;->bytes:[B

    invoke-static {v0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->orEmptyArray([B)[B

    move-result-object v0

    return-object v0
.end method
