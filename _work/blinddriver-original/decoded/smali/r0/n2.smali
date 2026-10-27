.class public abstract synthetic Lr0/n2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lx2/k;

.field public static final b:Lx2/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lx2/k;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lx2/k;-><init>(I)V

    sput-object v0, Lr0/n2;->a:Lx2/k;

    new-instance v0, Lx2/k;

    invoke-direct {v0, v1}, Lx2/k;-><init>(I)V

    sput-object v0, Lr0/n2;->b:Lx2/k;

    return-void
.end method
