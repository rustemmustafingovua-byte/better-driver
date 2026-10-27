.class public final synthetic Lb0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lf1/r;

.field public final synthetic n:I


# direct methods
.method public synthetic constructor <init>(Lf1/r;I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lb0/d;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/d;->m:Lf1/r;

    iput p2, p0, Lb0/d;->n:I

    return-void
.end method

.method public synthetic constructor <init>(Lf1/r;II)V
    .locals 0

    .line 2
    const/4 p2, 0x0

    iput p2, p0, Lb0/d;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/d;->m:Lf1/r;

    iput p3, p0, Lb0/d;->n:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lb0/d;->l:I

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v0, :pswitch_data_0

    iget p2, p0, Lb0/d;->n:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    iget-object p0, p0, Lb0/d;->m:Lf1/r;

    invoke-static {p0, p1, p2}, Lu/l;->a(Lf1/r;Lr0/q;I)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    const/4 p2, 0x1

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    iget-object v0, p0, Lb0/d;->m:Lf1/r;

    iget p0, p0, Lb0/d;->n:I

    invoke-static {v0, p1, p2, p0}, Lb0/g;->b(Lf1/r;Lr0/q;II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
