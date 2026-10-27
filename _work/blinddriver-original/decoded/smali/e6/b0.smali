.class public Le6/b0;
.super Le6/c0;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final l:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lb6/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lb6/l;->o:Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Le6/b0;->l:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Le6/b0;->l:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final F()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Le6/b0;->l:Ljava/lang/Class;

    return-object p0
.end method
