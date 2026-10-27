.class public abstract Lr5/f1;
.super Lr5/d1;
.source "SourceFile"


# instance fields
.field public final l:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr5/f1;->l:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Lr5/d1;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    check-cast p1, Lr5/f1;

    iget-object p1, p1, Lr5/f1;->l:Ljava/lang/Class;

    iget-object p0, p0, Lr5/f1;->l:Ljava/lang/Class;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
