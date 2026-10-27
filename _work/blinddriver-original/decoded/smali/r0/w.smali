.class public final Lr0/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le1/d;


# instance fields
.field public final l:Lr0/t;


# direct methods
.method public constructor <init>(Lr0/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/w;->l:Lr0/t;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lr0/w;

    if-eqz v0, :cond_0

    check-cast p1, Lr0/w;

    iget-object p1, p1, Lr0/w;->l:Lr0/t;

    iget-object p0, p0, Lr0/w;->l:Lr0/t;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lr0/w;->l:Lr0/t;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    return p0
.end method
