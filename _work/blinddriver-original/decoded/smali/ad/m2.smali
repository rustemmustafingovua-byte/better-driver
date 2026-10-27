.class public final synthetic Lad/m2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field public final synthetic a:Lad/r2;


# direct methods
.method public synthetic constructor <init>(Lad/r2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lad/m2;->a:Lad/r2;

    return-void
.end method


# virtual methods
.method public final onInit(I)V
    .locals 2

    iget-object p0, p0, Lad/m2;->a:Lad/r2;

    if-nez p1, :cond_2

    iget-object p1, p0, Lad/r2;->b:Landroid/speech/tts/TextToSpeech;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lad/r2;->b()V

    const v0, 0x3f866666    # 1.05f

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    iget-object v0, p0, Lad/r2;->q:Landroid/media/AudioAttributes;

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setAudioAttributes(Landroid/media/AudioAttributes;)I

    new-instance v0, Lad/p2;

    invoke-direct {v0, p0}, Lad/p2;-><init>(Lad/r2;)V

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lad/r2;->c:Z

    :goto_0
    iget-object p1, p0, Lad/r2;->o:Lu8/k;

    invoke-virtual {p1}, Lu8/k;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lad/r2;->o:Lu8/k;

    invoke-virtual {p1}, Lu8/k;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lt8/j;

    iget-object v0, p1, Lt8/j;->l:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p1, p1, Lt8/j;->m:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, 0x2

    invoke-static {p0, v0, p1, v1}, Lad/r2;->g(Lad/r2;Ljava/lang/String;ZI)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "TTS init failed: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Voice"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
