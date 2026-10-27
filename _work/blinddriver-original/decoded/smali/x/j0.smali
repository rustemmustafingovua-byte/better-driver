.class public final synthetic Lx/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lx/l0;


# direct methods
.method public synthetic constructor <init>(Lx/l0;I)V
    .locals 0

    iput p2, p0, Lx/j0;->l:I

    iput-object p1, p0, Lx/j0;->m:Lx/l0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lx/j0;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lx/j0;->m:Lx/l0;

    iget-object v0, p0, Lx/l0;->z:Li9/a;

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw/g;

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Lw/g;->c()I

    move-result v1

    if-ge p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Can\'t scroll to index "

    const-string v2, ", it is out of bounds [0, "

    invoke-static {p1, v1, v2}, La6/q;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lw/g;->c()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lt/b;->a(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lf1/q;->A0()Lu9/t;

    move-result-object v0

    new-instance v1, Lod/y3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lod/y3;-><init>(Lx/l0;ILy8/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lx/j0;->m:Lx/l0;

    iget-object p0, p0, Lx/l0;->z:Li9/a;

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw/g;

    invoke-virtual {p0}, Lw/g;->c()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lw/g;->d(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
