.class public final Lad/p2;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lad/r2;


# direct methods
.method public constructor <init>(Lad/r2;)V
    .locals 0

    iput-object p1, p0, Lad/p2;->a:Lad/r2;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDone(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lad/p2;->a:Lad/r2;

    invoke-static {p0, p1}, Lad/r2;->a(Lad/r2;Ljava/lang/String;)V

    return-void
.end method

.method public final onError(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lad/p2;->a:Lad/r2;

    invoke-static {p0, p1}, Lad/r2;->a(Lad/r2;Ljava/lang/String;)V

    return-void
.end method

.method public final onError(Ljava/lang/String;I)V
    .locals 0

    .line 2
    iget-object p0, p0, Lad/p2;->a:Lad/r2;

    invoke-static {p0, p1}, Lad/r2;->a(Lad/r2;Ljava/lang/String;)V

    return-void
.end method

.method public final onStart(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStop(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lad/p2;->a:Lad/r2;

    invoke-static {p0, p1}, Lad/r2;->a(Lad/r2;Ljava/lang/String;)V

    return-void
.end method
