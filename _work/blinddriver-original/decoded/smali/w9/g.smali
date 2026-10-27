.class public abstract Lw9/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lw9/m;

.field public static final b:I

.field public static final c:I

.field public static final d:Lmb/s2;

.field public static final e:Lmb/s2;

.field public static final f:Lmb/s2;

.field public static final g:Lmb/s2;

.field public static final h:Lmb/s2;

.field public static final i:Lmb/s2;

.field public static final j:Lmb/s2;

.field public static final k:Lmb/s2;

.field public static final l:Lmb/s2;

.field public static final m:Lmb/s2;

.field public static final n:Lmb/s2;

.field public static final o:Lmb/s2;

.field public static final p:Lmb/s2;

.field public static final q:Lmb/s2;

.field public static final r:Lmb/s2;

.field public static final s:Lmb/s2;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lw9/m;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lw9/m;-><init>(JLw9/m;Lw9/e;I)V

    sput-object v0, Lw9/g;->a:Lw9/m;

    const/16 v0, 0x20

    const/16 v1, 0xc

    const-string v2, "kotlinx.coroutines.bufferedChannel.segmentSize"

    invoke-static {v0, v1, v2}, Lz9/b;->l(IILjava/lang/String;)I

    move-result v0

    sput v0, Lw9/g;->b:I

    const-string v0, "kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations"

    const/16 v2, 0x2710

    invoke-static {v2, v1, v0}, Lz9/b;->l(IILjava/lang/String;)I

    move-result v0

    sput v0, Lw9/g;->c:I

    new-instance v0, Lmb/s2;

    const-string v1, "BUFFERED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lmb/s2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw9/g;->d:Lmb/s2;

    new-instance v0, Lmb/s2;

    const-string v1, "SHOULD_BUFFER"

    invoke-direct {v0, v1, v2}, Lmb/s2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw9/g;->e:Lmb/s2;

    new-instance v0, Lmb/s2;

    const-string v1, "S_RESUMING_BY_RCV"

    invoke-direct {v0, v1, v2}, Lmb/s2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw9/g;->f:Lmb/s2;

    new-instance v0, Lmb/s2;

    const-string v1, "RESUMING_BY_EB"

    invoke-direct {v0, v1, v2}, Lmb/s2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw9/g;->g:Lmb/s2;

    new-instance v0, Lmb/s2;

    const-string v1, "POISONED"

    invoke-direct {v0, v1, v2}, Lmb/s2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw9/g;->h:Lmb/s2;

    new-instance v0, Lmb/s2;

    const-string v1, "DONE_RCV"

    invoke-direct {v0, v1, v2}, Lmb/s2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw9/g;->i:Lmb/s2;

    new-instance v0, Lmb/s2;

    const-string v1, "INTERRUPTED_SEND"

    invoke-direct {v0, v1, v2}, Lmb/s2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw9/g;->j:Lmb/s2;

    new-instance v0, Lmb/s2;

    const-string v1, "INTERRUPTED_RCV"

    invoke-direct {v0, v1, v2}, Lmb/s2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw9/g;->k:Lmb/s2;

    new-instance v0, Lmb/s2;

    const-string v1, "CHANNEL_CLOSED"

    invoke-direct {v0, v1, v2}, Lmb/s2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw9/g;->l:Lmb/s2;

    new-instance v0, Lmb/s2;

    const-string v1, "SUSPEND"

    invoke-direct {v0, v1, v2}, Lmb/s2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw9/g;->m:Lmb/s2;

    new-instance v0, Lmb/s2;

    const-string v1, "SUSPEND_NO_WAITER"

    invoke-direct {v0, v1, v2}, Lmb/s2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw9/g;->n:Lmb/s2;

    new-instance v0, Lmb/s2;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v2}, Lmb/s2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw9/g;->o:Lmb/s2;

    new-instance v0, Lmb/s2;

    const-string v1, "NO_RECEIVE_RESULT"

    invoke-direct {v0, v1, v2}, Lmb/s2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw9/g;->p:Lmb/s2;

    new-instance v0, Lmb/s2;

    const-string v1, "CLOSE_HANDLER_CLOSED"

    invoke-direct {v0, v1, v2}, Lmb/s2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw9/g;->q:Lmb/s2;

    new-instance v0, Lmb/s2;

    const-string v1, "CLOSE_HANDLER_INVOKED"

    invoke-direct {v0, v1, v2}, Lmb/s2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw9/g;->r:Lmb/s2;

    new-instance v0, Lmb/s2;

    const-string v1, "NO_CLOSE_CAUSE"

    invoke-direct {v0, v1, v2}, Lmb/s2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw9/g;->s:Lmb/s2;

    return-void
.end method

.method public static final a(Lu9/f;Ljava/lang/Object;Li9/f;)Z
    .locals 0

    invoke-interface {p0, p1, p2}, Lu9/f;->i(Ljava/lang/Object;Li9/f;)Lmb/s2;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lu9/f;->o(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
