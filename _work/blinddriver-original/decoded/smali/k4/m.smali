.class public final Lk4/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/ArrayList;

.field public f:Ljava/util/concurrent/Executor;

.field public g:Ljava/util/concurrent/Executor;

.field public h:Lb/e0;

.field public i:Z

.field public final j:I

.field public k:Z

.field public l:Z

.field public final m:J

.field public final n:Lia/z;

.field public final o:Ljava/util/LinkedHashSet;

.field public p:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk4/m;->a:Landroid/content/Context;

    iput-object p2, p0, Lk4/m;->b:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lk4/m;->c:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lk4/m;->d:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lk4/m;->e:Ljava/util/ArrayList;

    const/4 p1, 0x1

    iput p1, p0, Lk4/m;->j:I

    iput-boolean p1, p0, Lk4/m;->k:Z

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lk4/m;->m:J

    new-instance p1, Lia/z;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lia/z;-><init>(I)V

    iput-object p1, p0, Lk4/m;->n:Lia/z;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lk4/m;->o:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public final varargs a([Ll4/a;)V
    .locals 5

    iget-object v0, p0, Lk4/m;->p:Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lk4/m;->p:Ljava/util/HashSet;

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    iget-object v3, p0, Lk4/m;->p:Ljava/util/HashSet;

    invoke-static {v3}, Lj9/n;->d(Ljava/lang/Object;)V

    iget v4, v2, Ll4/a;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lk4/m;->p:Ljava/util/HashSet;

    invoke-static {v3}, Lj9/n;->d(Ljava/lang/Object;)V

    iget v2, v2, Ll4/a;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ll4/a;

    iget-object p0, p0, Lk4/m;->n:Lia/z;

    invoke-virtual {p0, p1}, Lia/z;->a([Ll4/a;)V

    return-void
.end method
