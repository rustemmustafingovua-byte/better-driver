.class public final Ly7/f;
.super Lw7/u;
.source "SourceFile"


# instance fields
.field public a:Lw7/u;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Lw7/l;

.field public final synthetic e:Ld8/a;

.field public final synthetic f:Ly7/g;


# direct methods
.method public constructor <init>(Ly7/g;ZZLw7/l;Ld8/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly7/f;->f:Ly7/g;

    iput-boolean p2, p0, Ly7/f;->b:Z

    iput-boolean p3, p0, Ly7/f;->c:Z

    iput-object p4, p0, Ly7/f;->d:Lw7/l;

    iput-object p5, p0, Ly7/f;->e:Ld8/a;

    return-void
.end method


# virtual methods
.method public final read(Le8/b;)Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Ly7/f;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Le8/b;->f0()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Ly7/f;->a:Lw7/u;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ly7/f;->f:Ly7/g;

    iget-object v1, p0, Ly7/f;->e:Ld8/a;

    iget-object v2, p0, Ly7/f;->d:Lw7/l;

    invoke-virtual {v2, v0, v1}, Lw7/l;->d(Lw7/v;Ld8/a;)Lw7/u;

    move-result-object v0

    iput-object v0, p0, Ly7/f;->a:Lw7/u;

    :goto_0
    invoke-virtual {v0, p1}, Lw7/u;->read(Le8/b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final write(Le8/c;Ljava/lang/Object;)V
    .locals 3

    iget-boolean v0, p0, Ly7/f;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Le8/c;->t()Le8/c;

    return-void

    :cond_0
    iget-object v0, p0, Ly7/f;->a:Lw7/u;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ly7/f;->f:Ly7/g;

    iget-object v1, p0, Ly7/f;->e:Ld8/a;

    iget-object v2, p0, Ly7/f;->d:Lw7/l;

    invoke-virtual {v2, v0, v1}, Lw7/l;->d(Lw7/v;Ld8/a;)Lw7/u;

    move-result-object v0

    iput-object v0, p0, Ly7/f;->a:Lw7/u;

    :goto_0
    invoke-virtual {v0, p1, p2}, Lw7/u;->write(Le8/c;Ljava/lang/Object;)V

    return-void
.end method
