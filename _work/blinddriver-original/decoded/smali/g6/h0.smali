.class public final Lg6/h0;
.super Lg6/p0;
.source "SourceFile"


# static fields
.field public static final s:Lg6/h0;

.field public static final t:Lg6/h0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lg6/h0;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Lg6/h0;-><init>(Ljava/lang/Class;Ljava/lang/Boolean;)V

    sput-object v0, Lg6/h0;->s:Lg6/h0;

    new-instance v0, Lg6/h0;

    const-class v1, Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg6/h0;-><init>(Ljava/lang/Class;Ljava/lang/Boolean;)V

    sput-object v0, Lg6/h0;->t:Lg6/h0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Boolean;)V
    .locals 2

    sget-object v0, Lt6/f;->s:Lt6/f;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0, p2, v1}, Lg6/p0;-><init>(Ljava/lang/Class;Lt6/f;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v0

    sget-object v1, Ls5/n;->D:Ls5/n;

    if-ne v0, v1, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    sget-object v1, Ls5/n;->E:Ls5/n;

    if-ne v0, v1, :cond_1

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    iget-boolean v0, p0, Lg6/p0;->r:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lg6/f1;->B(Ls5/k;Lb6/i;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, p0, Lg6/f1;->l:Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, v0}, Lg6/f1;->A(Ls5/k;Lb6/i;Ljava/lang/Class;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object p3

    sget-object v0, Ls5/n;->D:Ls5/n;

    if-ne p3, v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    sget-object v0, Ls5/n;->E:Ls5/n;

    if-ne p3, v0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    iget-boolean p3, p0, Lg6/p0;->r:Z

    if-eqz p3, :cond_2

    invoke-virtual {p0, p1, p2}, Lg6/f1;->B(Ls5/k;Lb6/i;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p3, p0, Lg6/f1;->l:Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, p3}, Lg6/f1;->A(Ls5/k;Lb6/i;Ljava/lang/Class;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
