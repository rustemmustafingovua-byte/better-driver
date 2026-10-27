.class public abstract Li4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr0/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La1/b;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, La1/b;-><init>(I)V

    new-instance v1, Lr0/a0;

    invoke-direct {v1, v0}, Lr0/a0;-><init>(Li9/a;)V

    sput-object v1, Li4/a;->a:Lr0/a0;

    return-void
.end method
