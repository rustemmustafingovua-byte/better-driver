.class public final Lad/r2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lad/q2;


# instance fields
.field public final a:Landroid/content/SharedPreferences;

.field public final b:Landroid/speech/tts/TextToSpeech;

.field public volatile c:Z

.field public volatile d:Lad/u2;

.field public volatile e:F

.field public volatile f:Z

.field public volatile g:I

.field public volatile h:Z

.field public final i:Ljava/io/File;

.field public final j:Ljava/util/concurrent/ExecutorService;

.field public final k:Ljava/util/concurrent/ConcurrentHashMap;

.field public final l:Ljava/util/concurrent/atomic/AtomicInteger;

.field public volatile m:Landroid/media/AudioTrack;

.field public volatile n:Z

.field public final o:Lu8/k;

.field public final p:Landroid/media/AudioManager;

.field public final q:Landroid/media/AudioAttributes;

.field public final r:Landroid/media/AudioFocusRequest;

.field public final s:Landroid/media/AudioFocusRequest;

.field public volatile t:Landroid/media/AudioFocusRequest;

.field public final u:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

.field public final v:Landroid/media/ToneGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lad/q2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lad/r2;->Companion:Lad/q2;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "voice"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lad/r2;->a:Landroid/content/SharedPreferences;

    :try_start_0
    const-string v1, "mode"

    const-string v3, "ALL"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-static {v0}, Lad/u2;->valueOf(Ljava/lang/String;)Lad/u2;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_0
    sget-object v1, Lad/u2;->l:Lad/u2;

    instance-of v3, v0, Lt8/l;

    if-eqz v3, :cond_0

    move-object v0, v1

    :cond_0
    check-cast v0, Lad/u2;

    iput-object v0, p0, Lad/r2;->d:Lad/u2;

    iget-object v0, p0, Lad/r2;->a:Landroid/content/SharedPreferences;

    const-string v1, "volume"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    const v1, 0x3e4ccccd    # 0.2f

    invoke-static {v0, v1, v3}, Lg6/c1;->e(FFF)F

    move-result v0

    iput v0, p0, Lad/r2;->e:F

    iget-object v0, p0, Lad/r2;->a:Landroid/content/SharedPreferences;

    const-string v1, "pause_music"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lad/r2;->f:Z

    iget-object v0, p0, Lad/r2;->a:Landroid/content/SharedPreferences;

    const-string v1, "boost_pct"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x64

    invoke-static {v0, v2, v1}, Lg6/c1;->f(III)I

    iget-object v0, p0, Lad/r2;->a:Landroid/content/SharedPreferences;

    const-string v1, "gain_level"

    const/4 v3, 0x2

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v2, v1}, Lg6/c1;->f(III)I

    move-result v0

    iput v0, p0, Lad/r2;->g:I

    iget-object v0, p0, Lad/r2;->a:Landroid/content/SharedPreferences;

    const-string v2, "silent_in_call"

    const/4 v4, 0x1

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lad/r2;->h:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "getCacheDir(...)"

    invoke-static {v0, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lad/r2;->i:Ljava/io/File;

    new-instance v0, Lad/l2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lad/r2;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lad/r2;->k:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lad/r2;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lu8/k;

    invoke-direct {v0}, Lu8/k;-><init>()V

    iput-object v0, p0, Lad/r2;->o:Lu8/k;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lad/r2;->p:Landroid/media/AudioManager;

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    const-string v2, "build(...)"

    invoke-static {v0, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lad/r2;->q:Landroid/media/AudioAttributes;

    new-instance v2, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v2, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    invoke-virtual {v2, v0}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v2

    new-instance v4, Lad/o2;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v4}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v2

    const-string v4, "focus(...)"

    invoke-static {v2, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lad/r2;->r:Landroid/media/AudioFocusRequest;

    new-instance v2, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v2, v3}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    invoke-virtual {v2, v0}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    new-instance v2, Lad/o2;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v2}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    invoke-static {v0, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lad/r2;->s:Landroid/media/AudioFocusRequest;

    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    iput-object v0, p0, Lad/r2;->u:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v2, Lad/m2;

    invoke-direct {v2, p0}, Lad/m2;-><init>(Lad/r2;)V

    invoke-direct {v0, p1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lad/r2;->b:Landroid/speech/tts/TextToSpeech;

    :try_start_1
    new-instance p1, Landroid/media/ToneGenerator;

    const/16 v0, 0x5a

    invoke-direct {p1, v1, v0}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-static {p1}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object p1

    :goto_1
    instance-of v0, p1, Lt8/l;

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    check-cast p1, Landroid/media/ToneGenerator;

    iput-object p1, p0, Lad/r2;->v:Landroid/media/ToneGenerator;

    return-void
.end method

.method public static final a(Lad/r2;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lad/r2;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lad/r2;->h(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic g(Lad/r2;Ljava/lang/String;ZI)V
    .locals 2

    and-int/lit8 v0, p3, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    move p2, v1

    :cond_1
    invoke-virtual {p0, p1, v0, p2}, Lad/r2;->f(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    iget-object p0, p0, Lad/r2;->b:Landroid/speech/tts/TextToSpeech;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcd/a;->a:Lcd/b;

    sget-object v0, Lcd/a;->a:Lcd/b;

    sget-object v1, Lcd/b;->n:Lcd/b;

    if-ne v0, v1, :cond_1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/Locale;

    const-string v1, "uk"

    const-string v2, "UA"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_2

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    :goto_1
    return-void

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u0413\u043e\u043b\u043e\u0441 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u043d\u0438\u0439 ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "), \u0432\u0438\u043a\u043e\u0440\u0438\u0441\u0442\u043e\u0432\u0443\u044e \u0442\u0438\u043f\u043e\u0432\u0438\u0439"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Voice"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lad/r2;->b:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "volume"

    iget p0, p0, Lad/r2;->e:F

    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const/4 p0, 0x1

    invoke-virtual {v0, p1, p0, v2, p2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    return p0

    :cond_1
    return v1
.end method

.method public final d([SIII)V
    .locals 9

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    :goto_0
    new-instance v1, Landroid/media/AudioTrack$Builder;

    invoke-direct {v1}, Landroid/media/AudioTrack$Builder;-><init>()V

    iget-object v2, p0, Lad/r2;->q:Landroid/media/AudioAttributes;

    invoke-virtual {v1, v2}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object v1

    new-instance v2, Landroid/media/AudioFormat$Builder;

    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    array-length v1, p1

    mul-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object v0

    const-string v2, "build(...)"

    invoke-static {v0, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    array-length v3, p1

    invoke-virtual {v0, p1, v1, v3}, Landroid/media/AudioTrack;->write([SII)I

    iget-object v1, p0, Lad/r2;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eq p4, v1, :cond_1

    :try_start_1
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {p1}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-static {p1}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_2
    iget-object p1, p0, Lad/r2;->m:Landroid/media/AudioTrack;

    if-ne p1, v0, :cond_3

    :goto_3
    iput-object v2, p0, Lad/r2;->m:Landroid/media/AudioTrack;

    goto :goto_7

    :cond_1
    :try_start_3
    iput-object v0, p0, Lad/r2;->m:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    array-length p1, p1

    div-int/2addr p1, p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    int-to-long v5, p1

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    int-to-long p2, p2

    div-long/2addr v5, p2

    add-long/2addr v3, v5

    const/16 p2, 0x5dc

    int-to-long p2, p2

    add-long/2addr v3, p2

    :goto_4
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result p2

    const/4 p3, 0x3

    if-ne p2, p3, :cond_2

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result p2

    if-ge p2, p1, :cond_2

    iget-object p2, p0, Lad/r2;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    if-ne p4, p2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    cmp-long p2, p2, v3

    if-gez p2, :cond_2

    const-wide/16 p2, 0x19

    invoke-static {p2, p3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    goto :goto_8

    :cond_2
    :try_start_4
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p1

    invoke-static {p1}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_5
    :try_start_5
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception p1

    invoke-static {p1}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_6
    iget-object p1, p0, Lad/r2;->m:Landroid/media/AudioTrack;

    if-ne p1, v0, :cond_3

    goto :goto_3

    :cond_3
    :goto_7
    return-void

    :goto_8
    :try_start_6
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_9

    :catchall_5
    move-exception p2

    invoke-static {p2}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_9
    :try_start_7
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto :goto_a

    :catchall_6
    move-exception p2

    invoke-static {p2}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_a
    iget-object p2, p0, Lad/r2;->m:Landroid/media/AudioTrack;

    if-ne p2, v0, :cond_4

    iput-object v2, p0, Lad/r2;->m:Landroid/media/AudioTrack;

    :cond_4
    throw p1
.end method

.method public final e(Ljava/lang/String;Z)V
    .locals 10

    iget-object v1, p0, Lad/r2;->b:Landroid/speech/tts/TextToSpeech;

    iget-boolean v0, p0, Lad/r2;->c:Z

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    move-object v5, p0

    move-object v6, p1

    goto/16 :goto_9

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-string v0, "nav-"

    invoke-static {v2, v3, v0}, Lm/a;->k(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lad/r2;->u:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lad/r2;->p:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-boolean v3, p0, Lad/r2;->f:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lad/r2;->s:Landroid/media/AudioFocusRequest;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lad/r2;->r:Landroid/media/AudioFocusRequest;

    :goto_0
    :try_start_0
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_1
    iput-object v3, p0, Lad/r2;->t:Landroid/media/AudioFocusRequest;

    :goto_2
    iput-boolean v2, p0, Lad/r2;->n:Z

    :cond_4
    iget-object v0, p0, Lad/r2;->u:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lad/r2;->g:I

    if-lez v0, :cond_7

    iget-object v0, p0, Lad/r2;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz p2, :cond_6

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    iget-object v0, p0, Lad/r2;->m:Landroid/media/AudioTrack;

    if-eqz v0, :cond_5

    :try_start_1
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :cond_5
    :goto_3
    move v8, v3

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    goto :goto_3

    :goto_4
    iget v9, p0, Lad/r2;->g:I

    :try_start_2
    iget-object v0, p0, Lad/r2;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lad/n2;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v5, p0

    move-object v6, p1

    :try_start_3
    invoke-direct/range {v4 .. v9}, Lad/n2;-><init>(Lad/r2;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-object p0, Lt8/z;->a:Lt8/z;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    :goto_5
    move-object p0, v0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v5, p0

    move-object v6, p1

    goto :goto_5

    :goto_6
    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object p0

    :goto_7
    instance-of p0, p0, Lt8/l;

    if-nez p0, :cond_8

    goto :goto_8

    :cond_7
    move-object v5, p0

    move-object v6, p1

    :cond_8
    iget p0, v5, Lad/r2;->g:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "direct speak gainLevel="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Voice"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "volume"

    iget v0, v5, Lad/r2;->e:F

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    xor-int/lit8 p1, p2, 0x1

    invoke-virtual {v1, v6, p1, p0, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_9

    invoke-virtual {v5, v7}, Lad/r2;->h(Ljava/lang/String;)V

    :cond_9
    :goto_8
    return-void

    :goto_9
    iget-object p0, v5, Lad/r2;->o:Lu8/k;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance p2, Lt8/j;

    invoke-direct {p2, v6, p1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lu8/k;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public final f(Ljava/lang/String;ZZ)V
    .locals 3

    const-string v0, "text"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lad/r2;->d:Lad/u2;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    if-nez p3, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-boolean p3, p0, Lad/r2;->h:Z

    if-eqz p3, :cond_4

    iget-object p3, p0, Lad/r2;->p:Landroid/media/AudioManager;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/media/AudioManager;->getMode()I

    move-result p3

    if-eq p3, v1, :cond_3

    const/4 v0, 0x3

    if-eq p3, v0, :cond_3

    if-ne p3, v2, :cond_4

    :cond_3
    const-string p0, "Voice"

    const-string p1, "\u043c\u043e\u0432\u0447\u0443: \u0442\u0440\u0438\u0432\u0430\u0454 \u0434\u0437\u0432\u0456\u043d\u043e\u043a"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-virtual {p0, p1, p2}, Lad/r2;->e(Ljava/lang/String;Z)V

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lad/r2;->u:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lad/r2;->p:Landroid/media/AudioManager;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lad/r2;->t:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :cond_2
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lad/r2;->t:Landroid/media/AudioFocusRequest;

    :cond_3
    :goto_1
    return-void
.end method
