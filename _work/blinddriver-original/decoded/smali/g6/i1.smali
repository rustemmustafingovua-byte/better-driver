.class public final Lg6/i1;
.super Lg6/k1;
.source "SourceFile"


# instance fields
.field public final synthetic o:I

.field public final p:Ljava/lang/reflect/Executable;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lg6/i1;->o:I

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 2
    invoke-direct {p0, v2, v0, v1}, Lg6/k1;-><init>(ILjava/lang/Class;Lg6/v;)V

    .line 3
    iput-object p1, p0, Lg6/i1;->p:Ljava/lang/reflect/Executable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, Lg6/i1;->o:I

    .line 4
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 5
    invoke-direct {p0, v2, v0, v1}, Lg6/k1;-><init>(ILjava/lang/Class;Lg6/v;)V

    .line 6
    iput-object p1, p0, Lg6/i1;->p:Ljava/lang/reflect/Executable;

    return-void
.end method


# virtual methods
.method public final b(Lb6/i;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget p1, p0, Lg6/i1;->o:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lg6/i1;->p:Ljava/lang/reflect/Executable;

    check-cast p0, Ljava/lang/reflect/Method;

    const/4 p1, 0x0

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lg6/i1;->p:Ljava/lang/reflect/Executable;

    check-cast p0, Ljava/lang/reflect/Constructor;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
