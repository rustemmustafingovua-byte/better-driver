.class public final Lf6/y;
.super Lf2/b;
.source "SourceFile"


# instance fields
.field public final synthetic c:I

.field public final d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lf2/b;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lf6/y;->c:I

    invoke-direct {p0, p1, p2}, Lf2/b;-><init>(Lf2/b;Ljava/lang/Object;)V

    iput-object p3, p0, Lf6/y;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lf6/y;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lf6/y;->d:Ljava/lang/Object;

    check-cast v0, Le6/y;

    iget-object p0, p0, Lf2/b;->b:Ljava/lang/Object;

    invoke-virtual {v0, p1, p0}, Le6/y;->A(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/util/Map;

    iget-object v0, p0, Lf6/y;->d:Ljava/lang/Object;

    iget-object p0, p0, Lf2/b;->b:Ljava/lang/Object;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
