.class public final Lr0/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/u0;
.implements Lu9/t;


# instance fields
.field public final synthetic l:Lr0/u0;

.field public final m:Ly8/h;


# direct methods
.method public constructor <init>(Lr0/u0;Ly8/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/l1;->l:Lr0/u0;

    iput-object p2, p0, Lr0/l1;->m:Ly8/h;

    return-void
.end method


# virtual methods
.method public final C()Ly8/h;
    .locals 0

    iget-object p0, p0, Lr0/l1;->m:Ly8/h;

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lr0/l1;->l:Lr0/u0;

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lr0/l1;->l:Lr0/u0;

    invoke-interface {p0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-void
.end method
