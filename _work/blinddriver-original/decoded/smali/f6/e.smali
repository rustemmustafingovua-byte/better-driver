.class public final Lf6/e;
.super Lb6/n;
.source "SourceFile"


# instance fields
.field public final synthetic l:I

.field public final m:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/NoClassDefFoundError;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lf6/e;->l:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf6/e;->m:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ll5/b;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lf6/e;->l:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    check-cast p1, Le1/b;

    iput-object p1, p0, Lf6/e;->m:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 0

    iget p2, p0, Lf6/e;->l:I

    packed-switch p2, :pswitch_data_0

    invoke-virtual {p1}, Ls5/k;->R()Ls5/o;

    move-result-object p2

    invoke-virtual {p2, p1}, Ls5/o;->a(Ls5/k;)Lb6/q;

    move-result-object p1

    iget-object p0, p0, Lf6/e;->m:Ljava/lang/Object;

    check-cast p0, Le1/b;

    invoke-interface {p0, p1}, Ll5/b;->a(Lb6/q;)Lpb/i;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lf6/e;->m:Ljava/lang/Object;

    check-cast p0, Ljava/lang/NoClassDefFoundError;

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
