.class public final synthetic Lr/c2;
.super Lj9/a;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic s:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    iput p7, p0, Lr/c2;->s:I

    move-object v0, p4

    move-object p4, p2

    move p2, p6

    move-object p6, p5

    move-object p5, v0

    invoke-direct/range {p0 .. p6}, Lj9/a;-><init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lr/c2;->s:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    iget-object p0, p0, Lj9/a;->l:Ljava/lang/Object;

    check-cast p0, Lz0/d;

    invoke-virtual {p0, p1, p2}, Lz0/d;->i(Lr0/q;I)Ljava/lang/Object;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    check-cast p1, Lb3/q;

    iget-wide v2, p1, Lb3/q;->a:J

    check-cast p2, Ly8/c;

    iget-object p0, p0, Lj9/a;->l:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Lr/g2;

    iget-object p0, v1, Lr/g2;->V:Lx1/d;

    invoke-virtual {p0}, Lx1/d;->c()Lu9/t;

    move-result-object p0

    new-instance v0, Lr/e2;

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lr/e2;-><init>(Lr/g2;JLy8/c;I)V

    const/4 p1, 0x3

    invoke-static {p0, v4, v4, v0, p1}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
