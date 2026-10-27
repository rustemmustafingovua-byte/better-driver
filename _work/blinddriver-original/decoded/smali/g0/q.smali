.class public final synthetic Lg0/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lg0/r;

.field public final synthetic n:Landroid/graphics/drawable/Icon;


# direct methods
.method public synthetic constructor <init>(Lg0/r;Landroid/graphics/drawable/Icon;II)V
    .locals 0

    iput p4, p0, Lg0/q;->l:I

    iput-object p1, p0, Lg0/q;->m:Lg0/r;

    iput-object p2, p0, Lg0/q;->n:Landroid/graphics/drawable/Icon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lg0/q;->l:I

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v0, :pswitch_data_0

    const/16 p2, 0x31

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    iget-object v0, p0, Lg0/q;->m:Lg0/r;

    iget-object p0, p0, Lg0/q;->n:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p0, p1, p2}, Lg0/r;->b(Landroid/graphics/drawable/Icon;Lr0/q;I)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    const/16 p2, 0x31

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    iget-object v0, p0, Lg0/q;->m:Lg0/r;

    iget-object p0, p0, Lg0/q;->n:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p0, p1, p2}, Lg0/r;->b(Landroid/graphics/drawable/Icon;Lr0/q;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
