.class public final synthetic Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lio/sentry/ISerializer;

.field public final synthetic f$1:Lio/sentry/ProfileChunk;

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$3:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/ISerializer;Lio/sentry/ProfileChunk;Ljava/util/concurrent/atomic/AtomicReference;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda3;->f$0:Lio/sentry/ISerializer;

    iput-object p2, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda3;->f$1:Lio/sentry/ProfileChunk;

    iput-object p3, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda3;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda3;->f$3:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda3;->f$0:Lio/sentry/ISerializer;

    iget-object v1, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda3;->f$1:Lio/sentry/ProfileChunk;

    iget-object v2, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda3;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda3;->f$3:Ljava/io/File;

    invoke-static {v0, v1, v2, v3}, Lio/sentry/SentryEnvelopeItem;->lambda$fromPerfettoProfileChunk$18(Lio/sentry/ISerializer;Lio/sentry/ProfileChunk;Ljava/util/concurrent/atomic/AtomicReference;Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method
