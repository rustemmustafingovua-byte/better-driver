.class public final Ly9/t;
.super La9/c;
.source "SourceFile"

# interfaces
.implements Lx9/h;


# instance fields
.field public final l:Lx9/h;

.field public final m:Ly8/h;

.field public final n:I

.field public o:Ly8/h;

.field public p:Ly8/c;


# direct methods
.method public constructor <init>(Lx9/h;Ly8/h;)V
    .locals 2

    sget-object v0, Ly9/r;->l:Ly9/r;

    sget-object v1, Ly8/i;->l:Ly8/i;

    invoke-direct {p0, v0, v1}, La9/c;-><init>(Ly8/c;Ly8/h;)V

    iput-object p1, p0, Ly9/t;->l:Lx9/h;

    iput-object p2, p0, Ly9/t;->m:Ly8/h;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lsc/u0;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lsc/u0;-><init>(I)V

    invoke-interface {p2, v0, p1}, Ly8/h;->d(Li9/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Ly9/t;->n:I

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-virtual {p0, p2, p1}, Ly9/t;->f(Ly8/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :catchall_0
    move-exception p1

    new-instance v0, Ly9/p;

    invoke-interface {p2}, Ly8/c;->getContext()Ly8/h;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ly9/p;-><init>(Ljava/lang/Throwable;Ly8/h;)V

    iput-object v0, p0, Ly9/t;->o:Ly8/h;

    throw p1
.end method

.method public final f(Ly8/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-interface {p1}, Ly8/c;->getContext()Ly8/h;

    move-result-object v0

    invoke-static {v0}, Lu9/v;->i(Ly8/h;)V

    iget-object v1, p0, Ly9/t;->o:Ly8/h;

    if-eq v1, v0, :cond_2

    instance-of v2, v1, Ly9/p;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lod/y6;

    const/16 v3, 0x10

    invoke-direct {v2, v3, p0}, Lod/y6;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v2, v1}, Ly8/h;->d(Li9/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget v2, p0, Ly9/t;->n:I

    if-ne v1, v2, :cond_0

    iput-object v0, p0, Ly9/t;->o:Ly8/h;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Flow invariant is violated:\n\t\tFlow was collected in "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Ly9/t;->m:Ly8/h;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",\n\t\tbut emission happened in "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".\n\t\tPlease refer to \'flow\' documentation or use \'flowOn\' instead"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast v1, Ly9/p;

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\n            Flow exception transparency is violated:\n                Previous \'emit\' call has thrown exception "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Ly9/p;->m:Ljava/lang/Throwable;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", but then emission attempt of value \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\' has been detected.\n                Emissions from \'catch\' blocks are prohibited in order to avoid unspecified behaviour, \'Flow.catch\' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lr9/l;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iput-object p1, p0, Ly9/t;->p:Ly8/c;

    sget-object p1, Ly9/v;->a:Li9/f;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.flow.FlowCollector<kotlin.Any?>"

    iget-object v1, p0, Ly9/t;->l:Lx9/h;

    invoke-static {v1, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1, p2, p0}, Li9/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lz8/a;->l:Lz8/a;

    invoke-static {p1, p2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const/4 p2, 0x0

    iput-object p2, p0, Ly9/t;->p:Ly8/c;

    :cond_3
    return-object p1
.end method

.method public final getCallerFrame()La9/d;
    .locals 1

    iget-object p0, p0, Ly9/t;->p:Ly8/c;

    instance-of v0, p0, La9/d;

    if-eqz v0, :cond_0

    check-cast p0, La9/d;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getContext()Ly8/h;
    .locals 0

    iget-object p0, p0, Ly9/t;->o:Ly8/h;

    if-nez p0, :cond_0

    sget-object p0, Ly8/i;->l:Ly8/i;

    :cond_0
    return-object p0
.end method

.method public final getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {p1}, Lt8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ly9/p;

    invoke-virtual {p0}, Ly9/t;->getContext()Ly8/h;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ly9/p;-><init>(Ljava/lang/Throwable;Ly8/h;)V

    iput-object v1, p0, Ly9/t;->o:Ly8/h;

    :cond_0
    iget-object p0, p0, Ly9/t;->p:Ly8/c;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Ly8/c;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    sget-object p0, Lz8/a;->l:Lz8/a;

    return-object p0
.end method
