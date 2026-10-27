.class public final Lx/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lx/c0;

.field public c:I

.field public d:I

.field public e:Lx/a0;

.field public f:Z

.field public final g:Lr0/e1;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lx/c0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx/a0;->a:Ljava/lang/Object;

    iput-object p2, p0, Lx/a0;->b:Lx/c0;

    const/4 p1, -0x1

    iput p1, p0, Lx/a0;->c:I

    const/4 p1, 0x0

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Lx/a0;->g:Lr0/e1;

    return-void
.end method


# virtual methods
.method public final a()Lx/a0;
    .locals 1

    iget-boolean v0, p0, Lx/a0;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "Pin should not be called on an already disposed item "

    invoke-static {v0}, Lt/b;->c(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lx/a0;->d:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lx/a0;->b:Lx/c0;

    iget-object v0, v0, Lx/c0;->l:Ld1/v;

    invoke-virtual {v0, p0}, Ld1/v;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lx/a0;->g:Lr0/e1;

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/a0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lx/a0;->a()Lx/a0;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lx/a0;->e:Lx/a0;

    :cond_2
    iget v0, p0, Lx/a0;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx/a0;->d:I

    return-object p0
.end method

.method public final b()V
    .locals 1

    iget-boolean v0, p0, Lx/a0;->f:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lx/a0;->d:I

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "Release should only be called once"

    invoke-static {v0}, Lt/b;->c(Ljava/lang/String;)V

    :goto_0
    iget v0, p0, Lx/a0;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lx/a0;->d:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lx/a0;->b:Lx/c0;

    iget-object v0, v0, Lx/c0;->l:Ld1/v;

    invoke-virtual {v0, p0}, Ld1/v;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lx/a0;->e:Lx/a0;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lx/a0;->b()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lx/a0;->e:Lx/a0;

    :cond_3
    :goto_1
    return-void
.end method
