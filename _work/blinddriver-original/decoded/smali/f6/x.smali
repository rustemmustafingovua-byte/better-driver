.class public final Lf6/x;
.super Lf2/b;
.source "SourceFile"


# instance fields
.field public final synthetic c:I

.field public final d:Le6/w;

.field public final e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lf2/b;Ljava/lang/Object;Le6/w;Ljava/lang/String;I)V
    .locals 0

    iput p5, p0, Lf6/x;->c:I

    invoke-direct {p0, p1, p2}, Lf2/b;-><init>(Lf2/b;Ljava/lang/Object;)V

    iput-object p3, p0, Lf6/x;->d:Le6/w;

    iput-object p4, p0, Lf6/x;->e:Ljava/lang/String;

    return-void
.end method

.method private final g(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lf6/x;->c:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lf6/x;->e:Ljava/lang/String;

    iget-object v1, p0, Lf2/b;->b:Ljava/lang/Object;

    iget-object p0, p0, Lf6/x;->d:Le6/w;

    invoke-virtual {p0, p1, v0, v1}, Le6/w;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public f(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lf6/x;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lf2/b;->f(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lf6/x;->e:Ljava/lang/String;

    iget-object v1, p0, Lf2/b;->b:Ljava/lang/Object;

    iget-object p0, p0, Lf6/x;->d:Le6/w;

    invoke-virtual {p0, p1, v0, v1}, Le6/w;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
