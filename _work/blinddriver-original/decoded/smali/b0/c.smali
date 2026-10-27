.class public final synthetic Lb0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lf1/r;

.field public final synthetic n:J

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lf1/r;JII)V
    .locals 0

    iput p6, p0, Lb0/c;->l:I

    iput-object p1, p0, Lb0/c;->o:Ljava/lang/Object;

    iput-object p2, p0, Lb0/c;->m:Lf1/r;

    iput-wide p3, p0, Lb0/c;->n:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lb0/c;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lb0/c;->o:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lr1/f;

    move-object v5, p1

    check-cast v5, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x31

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v6

    iget-object v2, p0, Lb0/c;->m:Lf1/r;

    iget-wide v3, p0, Lb0/c;->n:J

    invoke-static/range {v1 .. v6}, Lo0/k1;->b(Lr1/f;Lf1/r;JLr0/q;I)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lb0/c;->o:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lm0/r;

    move-object v5, p1

    check-cast v5, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v6

    iget-object v2, p0, Lb0/c;->m:Lf1/r;

    iget-wide v3, p0, Lb0/c;->n:J

    invoke-static/range {v1 .. v6}, Lb0/g;->a(Lm0/r;Lf1/r;JLr0/q;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
