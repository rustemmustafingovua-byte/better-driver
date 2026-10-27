.class public final Lc2/w1;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:[Lc2/m;


# direct methods
.method public synthetic constructor <init>([Lc2/m;I)V
    .locals 0

    iput p2, p0, Lc2/w1;->l:I

    iput-object p1, p0, Lc2/w1;->m:[Lc2/m;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lc2/w1;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lc2/e1;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    const/4 v0, 0x0

    iget-object p0, p0, Lc2/w1;->m:[Lc2/m;

    invoke-static {p1, v0, p0, p2}, Lc2/x;->d(Lc2/e1;Z[Lc2/m;F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lc2/e1;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    const/4 v0, 0x1

    iget-object p0, p0, Lc2/w1;->m:[Lc2/m;

    invoke-static {p1, v0, p0, p2}, Lc2/x;->d(Lc2/e1;Z[Lc2/m;F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
