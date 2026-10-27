.class public final Lcc/b;
.super Lwa/h;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:Lcc/e;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcc/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final r(Lwb/a;ILwb/a;I)V
    .locals 1

    iget v0, p0, Lcc/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p1, Lwb/a;->e:Lcc/f;

    iget-object p3, p3, Lwb/a;->e:Lcc/f;

    iget-object p0, p0, Lcc/b;->b:Lcc/e;

    check-cast p0, Lg5/e;

    invoke-virtual {p0, p1, p2, p3, p4}, Lg5/e;->d(Lcc/f;ILcc/f;I)V

    return-void

    :pswitch_0
    iget-object p1, p1, Lwb/a;->e:Lcc/f;

    iget-object p3, p3, Lwb/a;->e:Lcc/f;

    iget-object p0, p0, Lcc/b;->b:Lcc/e;

    invoke-interface {p0, p1, p2, p3, p4}, Lcc/e;->d(Lcc/f;ILcc/f;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
