.class public final Lmb/b;
.super Lmb/a0;
.source "SourceFile"


# static fields
.field public static final a0:Ljava/util/logging/Logger;


# instance fields
.field public final Z:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lmb/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lmb/b;->a0:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 11

    invoke-direct {p0}, Lmb/a0;-><init>()V

    iput-object p1, p0, Lmb/b;->Z:Ljava/lang/ClassLoader;

    const-string p1, "valueOf"

    const-string v0, "append"

    :try_start_0
    const-string v1, "Ljava/lang/annotation/Retention;"

    invoke-virtual {p0, v1}, Lmb/a0;->g(Ljava/lang/String;)Lmb/x;

    move-result-object v1

    iput-object v1, p0, Lmb/a0;->a:Lmb/x;

    const-string v1, "Ljava/lang/AssertionError;"

    invoke-virtual {p0, v1}, Lmb/a0;->g(Ljava/lang/String;)Lmb/x;

    move-result-object v1

    iput-object v1, p0, Lmb/a0;->b:Lmb/x;

    const-string v1, "Ljava/lang/Boolean;"

    invoke-virtual {p0, v1}, Lmb/a0;->g(Ljava/lang/String;)Lmb/x;

    move-result-object v1

    iput-object v1, p0, Lmb/a0;->c:Lmb/x;

    const-string v1, "Ljava/lang/Byte;"

    invoke-virtual {p0, v1}, Lmb/a0;->g(Ljava/lang/String;)Lmb/x;

    move-result-object v1

    iput-object v1, p0, Lmb/a0;->d:Lmb/x;

    const-string v1, "Ljava/lang/Character;"

    invoke-virtual {p0, v1}, Lmb/a0;->g(Ljava/lang/String;)Lmb/x;

    move-result-object v1

    iput-object v1, p0, Lmb/a0;->e:Lmb/x;

    const-string v1, "Ljava/lang/Class;"

    invoke-virtual {p0, v1}, Lmb/a0;->g(Ljava/lang/String;)Lmb/x;

    move-result-object v1

    iput-object v1, p0, Lmb/a0;->f:Lmb/x;

    const-string v1, "Ljava/lang/Cloneable;"

    invoke-virtual {p0, v1}, Lmb/a0;->g(Ljava/lang/String;)Lmb/x;

    const-string v1, "Ljava/lang/Double;"

    invoke-virtual {p0, v1}, Lmb/a0;->g(Ljava/lang/String;)Lmb/x;

    move-result-object v1

    iput-object v1, p0, Lmb/a0;->g:Lmb/x;

    const-string v1, "Ljava/lang/Enum;"

    invoke-virtual {p0, v1}, Lmb/a0;->g(Ljava/lang/String;)Lmb/x;

    move-result-object v1

    iput-object v1, p0, Lmb/a0;->h:Lmb/x;

    const-string v1, "Ljava/lang/Error;"

    invoke-virtual {p0, v1}, Lmb/a0;->g(Ljava/lang/String;)Lmb/x;

    move-result-object v1

    iput-object v1, p0, Lmb/a0;->i:Lmb/x;

    const-string v1, "Ljava/lang/Exception;"

    invoke-virtual {p0, v1}, Lmb/a0;->g(Ljava/lang/String;)Lmb/x;

    const-string v1, "Ljava/lang/Float;"

    invoke-virtual {p0, v1}, Lmb/a0;->g(Ljava/lang/String;)Lmb/x;

    move-result-object v1

    iput-object v1, p0, Lmb/a0;->j:Lmb/x;

    const-string v1, "Ljava/lang/Integer;"

    invoke-virtual {p0, v1}, Lmb/a0;->g(Ljava/lang/String;)Lmb/x;

    move-result-object v1

    iput-object v1, p0, Lmb/a0;->k:Lmb/x;

    const-string v1, "Ljava/lang/Iterable;"

    invoke-virtual {p0, v1}, Lmb/a0;->g(Ljava/lang/String;)Lmb/x;

    move-result-object v1

    iput-object v1, p0, Lmb/a0;->l:Lmb/x;

    const-string v1, "Ljava/lang/Long;"

    invoke-virtual {p0, v1}, Lmb/a0;->g(Ljava/lang/String;)Lmb/x;

    move-result-object v1

    iput-object v1, p0, Lmb/a0;->m:Lmb/x;

    const-string v1, "Ljava/lang/Object;"

    invoke-virtual {p0, v1}, Lmb/a0;->g(Ljava/lang/String;)Lmb/x;

    move-result-object v1

    iput-object v1, p0, Lmb/a0;->n:Lmb/x;

    const-string v1, "Ljava/lang/Override;"

    invoke-virtual {p0, v1}, Lmb/a0;->g(Ljava/lang/String;)Lmb/x;

    move-result-object v1

    iput-object v1, p0, Lmb/a0;->o:Lmb/x;

    const-string v1, "Ljava/lang/RuntimeException;"

    invoke-virtual {p0, v1}, Lmb/a0;->g(Ljava/lang/String;)Lmb/x;

    move-result-object v1

    iput-object v1, p0, Lmb/a0;->p:Lmb/x;

    const-string v1, "Ljava/lang/Short;"

    invoke-virtual {p0, v1}, Lmb/a0;->g(Ljava/lang/String;)Lmb/x;

    move-result-object v1

    iput-object v1, p0, Lmb/a0;->q:Lmb/x;

    const-string v1, "Ljava/lang/String;"

    invoke-virtual {p0, v1}, Lmb/a0;->g(Ljava/lang/String;)Lmb/x;

    move-result-object v1

    iput-object v1, p0, Lmb/a0;->r:Lmb/x;

    const-string v1, "Ljava/lang/StringBuilder;"

    invoke-virtual {p0, v1}, Lmb/a0;->g(Ljava/lang/String;)Lmb/x;

    move-result-object v1

    iput-object v1, p0, Lmb/a0;->s:Lmb/x;

    const-string v1, "Ljava/lang/System;"

    invoke-virtual {p0, v1}, Lmb/a0;->g(Ljava/lang/String;)Lmb/x;

    move-result-object v1

    iput-object v1, p0, Lmb/a0;->t:Lmb/x;

    const-string v1, "Ljava/lang/Throwable;"

    invoke-virtual {p0, v1}, Lmb/a0;->g(Ljava/lang/String;)Lmb/x;

    move-result-object v1

    iput-object v1, p0, Lmb/a0;->u:Lmb/x;

    const-string v1, "Ljava/lang/Void;"

    invoke-virtual {p0, v1}, Lmb/a0;->g(Ljava/lang/String;)Lmb/x;

    move-result-object v1

    iput-object v1, p0, Lmb/a0;->v:Lmb/x;

    const-string v1, "Ljava/io/Serializable;"

    invoke-virtual {p0, v1}, Lmb/a0;->g(Ljava/lang/String;)Lmb/x;

    const-string v1, "Ljava/util/Iterator;"

    invoke-virtual {p0, v1}, Lmb/a0;->g(Ljava/lang/String;)Lmb/x;

    move-result-object v1

    iput-object v1, p0, Lmb/a0;->w:Lmb/x;

    iget-object v1, p0, Lmb/a0;->h:Lmb/x;

    const-string v2, "ordinal"

    const/4 v3, 0x0

    new-array v4, v3, [Lmb/x;

    invoke-static {v1, v2, v4}, Lmb/a0;->f(Lmb/x;Ljava/lang/String;[Lmb/x;)Lmb/v;

    move-result-object v1

    iput-object v1, p0, Lmb/a0;->x:Lmb/v;

    iget-object v1, p0, Lmb/a0;->l:Lmb/x;

    const-string v2, "iterator"

    new-array v4, v3, [Lmb/x;

    invoke-static {v1, v2, v4}, Lmb/a0;->f(Lmb/x;Ljava/lang/String;[Lmb/x;)Lmb/v;

    move-result-object v1

    iput-object v1, p0, Lmb/a0;->y:Lmb/v;

    iget-object v1, p0, Lmb/a0;->r:Lmb/x;

    const-string v2, "concat"

    filled-new-array {v1}, [Lmb/x;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lmb/a0;->f(Lmb/x;Ljava/lang/String;[Lmb/x;)Lmb/v;

    move-result-object v1

    iput-object v1, p0, Lmb/a0;->z:Lmb/v;

    iget-object v1, p0, Lmb/a0;->r:Lmb/x;

    const-string v2, "equals"

    iget-object v4, p0, Lmb/a0;->n:Lmb/x;

    filled-new-array {v4}, [Lmb/x;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lmb/a0;->f(Lmb/x;Ljava/lang/String;[Lmb/x;)Lmb/v;

    move-result-object v1

    iput-object v1, p0, Lmb/a0;->A:Lmb/v;

    iget-object v1, p0, Lmb/a0;->r:Lmb/x;

    const-string v2, "hashCode"

    new-array v4, v3, [Lmb/x;

    invoke-static {v1, v2, v4}, Lmb/a0;->f(Lmb/x;Ljava/lang/String;[Lmb/x;)Lmb/v;

    move-result-object v1

    iput-object v1, p0, Lmb/a0;->B:Lmb/v;

    iget-object v1, p0, Lmb/a0;->r:Lmb/x;

    sget-object v2, Lmb/x;->A:Lmb/w;

    const/4 v4, 0x1

    new-array v5, v4, [Lmb/x;

    aput-object v2, v5, v3

    invoke-static {v1, p1, v5}, Lmb/a0;->f(Lmb/x;Ljava/lang/String;[Lmb/x;)Lmb/v;

    move-result-object v1

    iput-object v1, p0, Lmb/a0;->C:Lmb/v;

    iget-object v1, p0, Lmb/a0;->r:Lmb/x;

    sget-object v5, Lmb/x;->B:Lmb/w;

    new-array v6, v4, [Lmb/x;

    aput-object v5, v6, v3

    invoke-static {v1, p1, v6}, Lmb/a0;->f(Lmb/x;Ljava/lang/String;[Lmb/x;)Lmb/v;

    move-result-object v1

    iput-object v1, p0, Lmb/a0;->D:Lmb/v;

    iget-object v1, p0, Lmb/a0;->r:Lmb/x;

    sget-object v6, Lmb/x;->z:Lmb/w;

    new-array v7, v4, [Lmb/x;

    aput-object v6, v7, v3

    invoke-static {v1, p1, v7}, Lmb/a0;->f(Lmb/x;Ljava/lang/String;[Lmb/x;)Lmb/v;

    move-result-object v1

    iput-object v1, p0, Lmb/a0;->E:Lmb/v;

    iget-object v1, p0, Lmb/a0;->r:Lmb/x;

    sget-object v7, Lmb/x;->y:Lmb/w;

    new-array v8, v4, [Lmb/x;

    aput-object v7, v8, v3

    invoke-static {v1, p1, v8}, Lmb/a0;->f(Lmb/x;Ljava/lang/String;[Lmb/x;)Lmb/v;

    move-result-object v1

    iput-object v1, p0, Lmb/a0;->F:Lmb/v;

    iget-object v1, p0, Lmb/a0;->r:Lmb/x;

    sget-object v8, Lmb/x;->x:Lmb/w;

    new-array v9, v4, [Lmb/x;

    aput-object v8, v9, v3

    invoke-static {v1, p1, v9}, Lmb/a0;->f(Lmb/x;Ljava/lang/String;[Lmb/x;)Lmb/v;

    move-result-object v1

    iput-object v1, p0, Lmb/a0;->G:Lmb/v;

    iget-object v1, p0, Lmb/a0;->r:Lmb/x;

    sget-object v9, Lmb/x;->D:Lmb/w;

    new-array v10, v4, [Lmb/x;

    aput-object v9, v10, v3

    invoke-static {v1, p1, v10}, Lmb/a0;->f(Lmb/x;Ljava/lang/String;[Lmb/x;)Lmb/v;

    move-result-object v1

    iput-object v1, p0, Lmb/a0;->H:Lmb/v;

    iget-object v1, p0, Lmb/a0;->r:Lmb/x;

    iget-object v10, p0, Lmb/a0;->n:Lmb/x;

    filled-new-array {v10}, [Lmb/x;

    move-result-object v10

    invoke-static {v1, p1, v10}, Lmb/a0;->f(Lmb/x;Ljava/lang/String;[Lmb/x;)Lmb/v;

    move-result-object p1

    iput-object p1, p0, Lmb/a0;->I:Lmb/v;

    iget-object p1, p0, Lmb/a0;->s:Lmb/x;

    new-array v1, v4, [Lmb/x;

    aput-object v2, v1, v3

    invoke-static {p1, v0, v1}, Lmb/a0;->f(Lmb/x;Ljava/lang/String;[Lmb/x;)Lmb/v;

    move-result-object p1

    iput-object p1, p0, Lmb/a0;->J:Lmb/v;

    iget-object p1, p0, Lmb/a0;->s:Lmb/x;

    new-array v1, v4, [Lmb/x;

    aput-object v5, v1, v3

    invoke-static {p1, v0, v1}, Lmb/a0;->f(Lmb/x;Ljava/lang/String;[Lmb/x;)Lmb/v;

    move-result-object p1

    iput-object p1, p0, Lmb/a0;->K:Lmb/v;

    iget-object p1, p0, Lmb/a0;->s:Lmb/x;

    new-array v1, v4, [Lmb/x;

    aput-object v6, v1, v3

    invoke-static {p1, v0, v1}, Lmb/a0;->f(Lmb/x;Ljava/lang/String;[Lmb/x;)Lmb/v;

    move-result-object p1

    iput-object p1, p0, Lmb/a0;->L:Lmb/v;

    iget-object p1, p0, Lmb/a0;->s:Lmb/x;

    new-array v1, v4, [Lmb/x;

    aput-object v7, v1, v3

    invoke-static {p1, v0, v1}, Lmb/a0;->f(Lmb/x;Ljava/lang/String;[Lmb/x;)Lmb/v;

    move-result-object p1

    iput-object p1, p0, Lmb/a0;->M:Lmb/v;

    iget-object p1, p0, Lmb/a0;->s:Lmb/x;

    new-array v1, v4, [Lmb/x;

    aput-object v8, v1, v3

    invoke-static {p1, v0, v1}, Lmb/a0;->f(Lmb/x;Ljava/lang/String;[Lmb/x;)Lmb/v;

    move-result-object p1

    iput-object p1, p0, Lmb/a0;->N:Lmb/v;

    iget-object p1, p0, Lmb/a0;->s:Lmb/x;

    new-array v1, v4, [Lmb/x;

    aput-object v9, v1, v3

    invoke-static {p1, v0, v1}, Lmb/a0;->f(Lmb/x;Ljava/lang/String;[Lmb/x;)Lmb/v;

    move-result-object p1

    iput-object p1, p0, Lmb/a0;->O:Lmb/v;

    iget-object p1, p0, Lmb/a0;->s:Lmb/x;

    iget-object v1, p0, Lmb/a0;->n:Lmb/x;

    filled-new-array {v1}, [Lmb/x;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lmb/a0;->f(Lmb/x;Ljava/lang/String;[Lmb/x;)Lmb/v;

    move-result-object p1

    iput-object p1, p0, Lmb/a0;->P:Lmb/v;

    iget-object p1, p0, Lmb/a0;->s:Lmb/x;

    iget-object v1, p0, Lmb/a0;->r:Lmb/x;

    filled-new-array {v1}, [Lmb/x;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lmb/a0;->f(Lmb/x;Ljava/lang/String;[Lmb/x;)Lmb/v;

    iget-object p1, p0, Lmb/a0;->s:Lmb/x;

    const-string v0, "toString"

    new-array v1, v3, [Lmb/x;

    invoke-static {p1, v0, v1}, Lmb/a0;->f(Lmb/x;Ljava/lang/String;[Lmb/x;)Lmb/v;

    move-result-object p1

    iput-object p1, p0, Lmb/a0;->Q:Lmb/v;

    iget-object p1, p0, Lmb/a0;->u:Lmb/x;

    const-string v0, "addSuppressed"

    filled-new-array {p1}, [Lmb/x;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p1, v0, v1}, Lmb/x;->a(Ljava/lang/String;[Lmb/x;)Lmb/v;

    move-result-object p1
    :try_end_1
    .catch Lhb/a; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iput-object p1, p0, Lmb/a0;->R:Lmb/v;

    iget-object p1, p0, Lmb/a0;->w:Lmb/x;

    const-string v0, "hasNext"

    new-array v1, v3, [Lmb/x;

    invoke-static {p1, v0, v1}, Lmb/a0;->f(Lmb/x;Ljava/lang/String;[Lmb/x;)Lmb/v;

    move-result-object p1

    iput-object p1, p0, Lmb/a0;->S:Lmb/v;

    iget-object p1, p0, Lmb/a0;->w:Lmb/x;

    const-string v0, "next"

    new-array v1, v3, [Lmb/x;

    invoke-static {p1, v0, v1}, Lmb/a0;->f(Lmb/x;Ljava/lang/String;[Lmb/x;)Lmb/v;

    move-result-object p1

    iput-object p1, p0, Lmb/a0;->T:Lmb/v;

    iget-object p1, p0, Lmb/a0;->s:Lmb/x;

    iget-object v0, p0, Lmb/a0;->r:Lmb/x;

    filled-new-array {v0}, [Lmb/x;

    move-result-object v0

    invoke-static {p1, v0}, Lmb/a0;->e(Lmb/x;[Lmb/x;)Lmb/f6;

    move-result-object p1

    iput-object p1, p0, Lmb/a0;->U:Lmb/f6;

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    new-instance p1, Lhb/b;

    const-string v0, "Cannot load simple types"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lmb/i6;
    .locals 4

    const-string v0, "findIClass"

    sget-object v1, Lmb/b;->a0:Ljava/util/logging/Logger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, p1}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lmb/b;->Z:Ljava/lang/ClassLoader;

    invoke-static {p1}, Lmb/o;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "clazz={0}"

    invoke-virtual {v1, v0, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lmb/i6;

    invoke-direct {v1, p1, p0}, Lmb/i6;-><init>(Ljava/lang/Class;Lmb/b;)V

    invoke-virtual {v1}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lmb/a0;->Y:Ljava/util/logging/Logger;

    const-string v3, "{0}: Defined type \"{0}\""

    invoke-virtual {v2, v0, v3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lmb/a0;->W:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmb/x;

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    new-instance p0, Lhb/b;

    const-string v0, "Non-identical definition of IClass \""

    const-string v1, "\""

    invoke-static {v0, p1, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    :goto_1
    instance-of v0, p1, Ljava/lang/ClassNotFoundException;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    goto :goto_3

    :cond_2
    throw p0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "wrong name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_3
    return-object v2

    :cond_3
    throw p0
.end method
