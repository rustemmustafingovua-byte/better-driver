.class public final Lr6/j;
.super Lpc/h;
.source "SourceFile"


# static fields
.field public static final n:Lr6/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr6/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lr6/j;->n:Lr6/j;

    return-void
.end method


# virtual methods
.method public final q(Ljava/lang/Class;Lb6/u;)Lpc/h;
    .locals 1

    new-instance v0, Lr6/l;

    invoke-direct {v0, p0, p1, p2}, Lr6/l;-><init>(Lpc/h;Ljava/lang/Class;Lb6/u;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Class;)Lb6/u;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
