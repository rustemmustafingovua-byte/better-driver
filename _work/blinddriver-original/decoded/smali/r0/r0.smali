.class public final Lr0/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/u2;


# instance fields
.field public final a:Lt8/o;


# direct methods
.method public constructor <init>(Li9/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ly4/s;->y(Li9/a;)Lt8/o;

    move-result-object p1

    iput-object p1, p0, Lr0/r0;->a:Lt8/o;

    return-void
.end method


# virtual methods
.method public final a(Lr0/j1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lr0/r0;->a:Lt8/o;

    invoke-virtual {p0}, Lt8/o;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
