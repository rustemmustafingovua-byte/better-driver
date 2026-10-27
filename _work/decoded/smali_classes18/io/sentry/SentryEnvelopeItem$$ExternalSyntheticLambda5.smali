.class public final synthetic Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda5;->f$0:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda5;->f$0:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/sentry/SentryEnvelopeItem;->lambda$fromPerfettoProfileChunk$20(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
