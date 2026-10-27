.class public final Lb4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx9/h;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lr0/l1;


# direct methods
.method public synthetic constructor <init>(Lr0/l1;I)V
    .locals 0

    iput p2, p0, Lb4/a;->l:I

    iput-object p1, p0, Lb4/a;->m:Lr0/l1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;
    .locals 0

    iget p2, p0, Lb4/a;->l:I

    packed-switch p2, :pswitch_data_0

    iget-object p0, p0, Lb4/a;->m:Lr0/l1;

    invoke-virtual {p0, p1}, Lr0/l1;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lb4/a;->m:Lr0/l1;

    invoke-virtual {p0, p1}, Lr0/l1;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lb4/a;->m:Lr0/l1;

    invoke-virtual {p0, p1}, Lr0/l1;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lb4/a;->m:Lr0/l1;

    invoke-virtual {p0, p1}, Lr0/l1;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
