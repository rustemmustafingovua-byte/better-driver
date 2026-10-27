.class public final Ly4/n;
.super Lr5/u0;
.source "SourceFile"


# static fields
.field public static final i:Ljava/lang/String;


# instance fields
.field public final a:Ly4/q;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ljava/util/List;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/ArrayList;

.field public g:Z

.field public h:Lx4/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkContinuationImpl"

    invoke-static {v0}, Lx4/t;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ly4/n;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ly4/q;Ljava/lang/String;ILjava/util/List;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/n;->a:Ly4/q;

    iput-object p2, p0, Ly4/n;->b:Ljava/lang/String;

    iput p3, p0, Ly4/n;->c:I

    iput-object p4, p0, Ly4/n;->d:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Ly4/n;->e:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ly4/n;->f:Ljava/util/ArrayList;

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_2

    const/4 p2, 0x1

    if-ne p3, p2, :cond_1

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lx4/z;

    iget-object p2, p2, Lx4/z;->b:Lg5/o;

    iget-wide v0, p2, Lg5/o;->u:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Next Schedule Time Override must be used with ExistingPeriodicWorkPolicyUPDATE (preferably) or KEEP"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lx4/z;

    iget-object p2, p2, Lx4/z;->a:Ljava/util/UUID;

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p5, "id.toString()"

    invoke-static {p2, p5}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p5, p0, Ly4/n;->e:Ljava/util/ArrayList;

    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p5, p0, Ly4/n;->f:Ljava/util/ArrayList;

    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static x(Ly4/n;)Ljava/util/HashSet;
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public final w()Lx4/j;
    .locals 5

    iget-boolean v0, p0, Ly4/n;->g:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Ly4/n;->a:Ly4/q;

    iget-object v1, v0, Ly4/q;->m:Lx4/a;

    iget-object v1, v1, Lx4/a;->m:Lx4/j;

    const/4 v2, 0x1

    iget v3, p0, Ly4/n;->c:I

    if-eq v3, v2, :cond_3

    const/4 v2, 0x2

    if-eq v3, v2, :cond_2

    const/4 v2, 0x3

    if-eq v3, v2, :cond_1

    const/4 v2, 0x4

    if-ne v3, v2, :cond_0

    const-string v2, "APPEND_OR_REPLACE"

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    const-string v2, "APPEND"

    goto :goto_0

    :cond_2
    const-string v2, "KEEP"

    goto :goto_0

    :cond_3
    const-string v2, "REPLACE"

    :goto_0
    const-string v3, "EnqueueRunnable_"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Ly4/q;->o:Li5/a;

    iget-object v0, v0, Li5/a;->a:Lh5/h;

    new-instance v3, Lod/x4;

    const/16 v4, 0x11

    invoke-direct {v3, v4, p0}, Lod/x4;-><init>(ILjava/lang/Object;)V

    invoke-static {v1, v2, v0, v3}, Lpc/h;->p(Lx4/j;Ljava/lang/String;Ljava/util/concurrent/Executor;Li9/a;)Lx4/j;

    move-result-object v0

    iput-object v0, p0, Ly4/n;->h:Lx4/j;

    goto :goto_1

    :cond_4
    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Already enqueued work ids ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", "

    iget-object v3, p0, Ly4/n;->e:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ly4/n;->i:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lx4/t;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object p0, p0, Ly4/n;->h:Lx4/j;

    return-object p0
.end method
