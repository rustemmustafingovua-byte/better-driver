.class public final synthetic Lb0/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lm0/v1;

.field public final synthetic n:Lz0/d;

.field public final synthetic o:I


# direct methods
.method public synthetic constructor <init>(Lm0/v1;Lz0/d;II)V
    .locals 0

    iput p4, p0, Lb0/d0;->l:I

    iput-object p1, p0, Lb0/d0;->m:Lm0/v1;

    iput-object p2, p0, Lb0/d0;->n:Lz0/d;

    iput p3, p0, Lb0/d0;->o:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lb0/d0;->l:I

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v0, :pswitch_data_0

    iget p2, p0, Lb0/d0;->o:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    iget-object v0, p0, Lb0/d0;->m:Lm0/v1;

    iget-object p0, p0, Lb0/d0;->n:Lz0/d;

    invoke-static {v0, p0, p1, p2}, Lb0/n1;->f(Lm0/v1;Lz0/d;Lr0/q;I)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget p2, p0, Lb0/d0;->o:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    iget-object v0, p0, Lb0/d0;->m:Lm0/v1;

    iget-object p0, p0, Lb0/d0;->n:Lz0/d;

    invoke-static {v0, p0, p1, p2}, Lb0/n1;->d(Lm0/v1;Lz0/d;Lr0/q;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
