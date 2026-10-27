.class public final synthetic Lad/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lad/j0;


# direct methods
.method public synthetic constructor <init>(Lad/j0;I)V
    .locals 0

    iput p2, p0, Lad/b0;->l:I

    iput-object p1, p0, Lad/b0;->m:Lad/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lad/b0;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lad/b0;->m:Lad/j0;

    iget-object p0, p0, Lad/j0;->a:Ldd/k0;

    invoke-virtual {p0, p1}, Ldd/k0;->n(Ljava/lang/String;)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lad/b0;->m:Lad/j0;

    iget-object p0, p0, Lad/j0;->a:Ldd/k0;

    invoke-virtual {p0, p1}, Ldd/k0;->n(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    check-cast p1, Ldd/m0;

    const-string v0, "s"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lad/b0;->m:Lad/j0;

    iget-object v0, p0, Lad/j0;->N:Lad/l;

    iget-wide v1, p1, Ldd/m0;->e:J

    iget-object v3, p1, Ldd/m0;->c:[F

    iget-object v4, p1, Ldd/m0;->b:Ljava/lang/Float;

    iget-object v5, p1, Ldd/m0;->d:[F

    invoke-virtual/range {v0 .. v5}, Lad/l;->c(J[FLjava/lang/Float;[F)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
