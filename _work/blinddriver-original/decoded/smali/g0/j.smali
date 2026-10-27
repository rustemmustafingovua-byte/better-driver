.class public final synthetic Lg0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:I

.field public final synthetic n:J

.field public final synthetic o:I


# direct methods
.method public synthetic constructor <init>(IIJI)V
    .locals 0

    iput p5, p0, Lg0/j;->l:I

    iput p1, p0, Lg0/j;->m:I

    iput-wide p3, p0, Lg0/j;->n:J

    iput p2, p0, Lg0/j;->o:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lg0/j;->l:I

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v0, :pswitch_data_0

    iget p2, p0, Lg0/j;->o:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    iget v0, p0, Lg0/j;->m:I

    iget-wide v1, p0, Lg0/j;->n:J

    invoke-static {v0, v1, v2, p1, p2}, Lg0/m;->b(IJLr0/q;I)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget p2, p0, Lg0/j;->o:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    iget v0, p0, Lg0/j;->m:I

    iget-wide v1, p0, Lg0/j;->n:J

    invoke-static {v0, v1, v2, p1, p2}, Lg0/m;->b(IJLr0/q;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
