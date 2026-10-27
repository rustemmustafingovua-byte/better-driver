.class public final Lmb/j6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final l:Ljava/util/HashSet;

.field public static final m:Ljava/util/HashSet;


# instance fields
.field public final a:Ljava/lang/StringBuilder;

.field public final b:Ljava/lang/String;

.field public final c:Lmb/s6;

.field public d:Z

.field public e:I

.field public f:I

.field public g:Z

.field public h:I

.field public i:I

.field public j:I

.field public k:I


# direct methods
.method static constructor <clinit>()V
    .locals 51

    new-instance v0, Ljava/util/HashSet;

    const-string v49, "volatile"

    const-string v50, "while"

    const-string v1, "abstract"

    const-string v2, "assert"

    const-string v3, "boolean"

    const-string v4, "break"

    const-string v5, "byte"

    const-string v6, "case"

    const-string v7, "catch"

    const-string v8, "char"

    const-string v9, "class"

    const-string v10, "const"

    const-string v11, "continue"

    const-string v12, "default"

    const-string v13, "do"

    const-string v14, "double"

    const-string v15, "else"

    const-string v16, "enum"

    const-string v17, "extends"

    const-string v18, "final"

    const-string v19, "finally"

    const-string v20, "float"

    const-string v21, "for"

    const-string v22, "goto"

    const-string v23, "if"

    const-string v24, "implements"

    const-string v25, "import"

    const-string v26, "instanceof"

    const-string v27, "int"

    const-string v28, "interface"

    const-string v29, "long"

    const-string v30, "native"

    const-string v31, "new"

    const-string v32, "package"

    const-string v33, "private"

    const-string v34, "protected"

    const-string v35, "public"

    const-string v36, "return"

    const-string v37, "short"

    const-string v38, "static"

    const-string v39, "strictfp"

    const-string v40, "super"

    const-string v41, "switch"

    const-string v42, "synchronized"

    const-string v43, "this"

    const-string v44, "throw"

    const-string v45, "throws"

    const-string v46, "transient"

    const-string v47, "try"

    const-string v48, "void"

    filled-new-array/range {v1 .. v50}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lmb/j6;->l:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    const-string v48, ">>="

    const-string v49, ">>>="

    const-string v1, "("

    const-string v2, ")"

    const-string v3, "{"

    const-string v4, "}"

    const-string v5, "["

    const-string v6, "]"

    const-string v7, ";"

    const-string v8, ","

    const-string v9, "."

    const-string v10, "@"

    const-string v11, "::"

    const-string v12, "="

    const-string v13, ">"

    const-string v14, "<"

    const-string v15, "!"

    const-string v16, "~"

    const-string v17, "?"

    const-string v18, ":"

    const-string v19, "->"

    const-string v20, "=="

    const-string v21, "<="

    const-string v22, ">="

    const-string v23, "!="

    const-string v24, "&&"

    const-string v25, "||"

    const-string v26, "++"

    const-string v27, "--"

    const-string v28, "+"

    const-string v29, "-"

    const-string v30, "*"

    const-string v31, "/"

    const-string v32, "&"

    const-string v33, "|"

    const-string v34, "^"

    const-string v35, "%"

    const-string v36, "<<"

    const-string v37, ">>"

    const-string v38, ">>>"

    const-string v39, "+="

    const-string v40, "-="

    const-string v41, "*="

    const-string v42, "/="

    const-string v43, "&="

    const-string v44, "|="

    const-string v45, "^="

    const-string v46, "%="

    const-string v47, "<<="

    filled-new-array/range {v1 .. v49}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lmb/j6;->m:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lmb/j6;->a:Ljava/lang/StringBuilder;

    const/4 v0, -0x1

    iput v0, p0, Lmb/j6;->e:I

    iput v0, p0, Lmb/j6;->f:I

    if-nez p1, :cond_2

    const-string v0, "org.codehaus.janino.source_debugging.enable"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "org.codehaus.janino.source_debugging.dir"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "org.codehaus.janino.source_debugging.keep"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    :goto_0
    const-string v1, "janino"

    const-string v2, ".java"

    invoke-static {v1, v2, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->deleteOnExit()V

    :cond_1
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    sget v1, Lib/b;->a:I

    new-instance v1, Lib/a;

    invoke-direct {v1, p2, v0}, Lib/a;-><init>(Ljava/io/Reader;Ljava/io/FileWriter;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    move-object p2, v1

    :cond_2
    iput-object p1, p0, Lmb/j6;->b:Ljava/lang/String;

    new-instance p1, Lmb/s6;

    invoke-direct {p1, p2}, Lmb/s6;-><init>(Ljava/io/Reader;)V

    iput-object p1, p0, Lmb/j6;->c:Lmb/s6;

    const/4 p1, 0x1

    iput p1, p0, Lmb/j6;->h:I

    const/4 p1, 0x0

    iput p1, p0, Lmb/j6;->i:I

    return-void
.end method

.method public static b(I)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(I)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_3

    const/16 v0, 0x66

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static d(I)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x37

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()I
    .locals 4

    :try_start_0
    iget-object v0, p0, Lmb/j6;->c:Lmb/s6;

    invoke-virtual {v0}, Lmb/s6;->read()I

    move-result v0
    :try_end_0
    .catch Lmb/r6; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0xd

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iget v1, p0, Lmb/j6;->h:I

    add-int/2addr v1, v2

    iput v1, p0, Lmb/j6;->h:I

    iput v3, p0, Lmb/j6;->i:I

    iput-boolean v2, p0, Lmb/j6;->g:Z

    return v0

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    iget-boolean v1, p0, Lmb/j6;->g:Z

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Lmb/j6;->g:Z

    return v0

    :cond_1
    iget v1, p0, Lmb/j6;->h:I

    add-int/2addr v1, v2

    iput v1, p0, Lmb/j6;->h:I

    iput v3, p0, Lmb/j6;->i:I

    return v0

    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    iget v1, p0, Lmb/j6;->i:I

    rem-int/lit8 v2, v1, 0x8

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x8

    iput v1, p0, Lmb/j6;->i:I

    iput-boolean v3, p0, Lmb/j6;->g:Z

    return v0

    :cond_3
    iget v1, p0, Lmb/j6;->i:I

    add-int/2addr v1, v2

    iput v1, p0, Lmb/j6;->i:I

    iput-boolean v3, p0, Lmb/j6;->g:Z

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lhb/a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lmb/j6;->e()Lhb/c;

    move-result-object p0

    invoke-direct {v1, v2, p0, v0}, Lhb/a;-><init>(Ljava/lang/String;Lhb/c;Ljava/lang/Exception;)V

    throw v1
.end method

.method public final e()Lhb/c;
    .locals 3

    new-instance v0, Lhb/c;

    iget v1, p0, Lmb/j6;->j:I

    iget v2, p0, Lmb/j6;->k:I

    iget-object p0, p0, Lmb/j6;->b:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lhb/c;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public final f()I
    .locals 3

    iget v0, p0, Lmb/j6;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lmb/j6;->a()I

    move-result v0

    iput v0, p0, Lmb/j6;->e:I
    :try_end_0
    .catch Lmb/r6; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lhb/a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lmb/j6;->e()Lhb/c;

    move-result-object p0

    invoke-direct {v1, v2, p0, v0}, Lhb/a;-><init>(Ljava/lang/String;Lhb/c;Ljava/lang/Exception;)V

    throw v1
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Lmb/j6;->f()I

    move-result p0

    int-to-char p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final h()I
    .locals 3

    iget v0, p0, Lmb/j6;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lmb/j6;->f()I

    :try_start_0
    invoke-virtual {p0}, Lmb/j6;->a()I

    move-result v0

    iput v0, p0, Lmb/j6;->f:I
    :try_end_0
    .catch Lmb/r6; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lhb/a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lmb/j6;->e()Lhb/c;

    move-result-object p0

    invoke-direct {v1, v2, p0, v0}, Lhb/a;-><init>(Ljava/lang/String;Lhb/c;Ljava/lang/Exception;)V

    throw v1
.end method

.method public final i(I)Z
    .locals 2

    invoke-virtual {p0}, Lmb/j6;->f()I

    move-result v0

    if-ne v0, p1, :cond_1

    iget p1, p0, Lmb/j6;->e:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v1, p0, Lmb/j6;->a:Ljava/lang/StringBuilder;

    int-to-char p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget p1, p0, Lmb/j6;->f:I

    iput p1, p0, Lmb/j6;->e:I

    iput v0, p0, Lmb/j6;->f:I

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final j(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lmb/j6;->f()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lmb/j6;->e:I

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ne p1, v1, :cond_1

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    iget p1, p0, Lmb/j6;->e:I

    int-to-char p1, p1

    iget-object v0, p0, Lmb/j6;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p1, p0, Lmb/j6;->f:I

    iput p1, p0, Lmb/j6;->e:I

    iput v1, p0, Lmb/j6;->f:I

    const/4 p0, 0x1

    return p0
.end method

.method public final k()C
    .locals 3

    invoke-virtual {p0}, Lmb/j6;->f()I

    iget v0, p0, Lmb/j6;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    int-to-char v0, v0

    iget-object v2, p0, Lmb/j6;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lmb/j6;->f:I

    iput v2, p0, Lmb/j6;->e:I

    iput v1, p0, Lmb/j6;->f:I

    return v0

    :cond_0
    new-instance v0, Lhb/a;

    const-string v1, "Unexpected end-of-input"

    invoke-virtual {p0}, Lmb/j6;->e()Lhb/c;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v0
.end method

.method public final l()V
    .locals 4

    invoke-virtual {p0}, Lmb/j6;->f()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    invoke-virtual {p0}, Lmb/j6;->f()I

    move-result v0

    const/16 v2, 0xd

    if-eq v0, v2, :cond_6

    invoke-virtual {p0}, Lmb/j6;->f()I

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_6

    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Lmb/j6;->i(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmb/j6;->k()C

    return-void

    :cond_0
    const-string v0, "btnfr\"\'\\"

    invoke-virtual {p0}, Lmb/j6;->f()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lmb/j6;->k()C

    return-void

    :cond_1
    const-string v0, "01234567"

    invoke-virtual {p0, v0}, Lmb/j6;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lmb/j6;->k()C

    move-result v2

    invoke-virtual {p0, v0}, Lmb/j6;->j(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lmb/j6;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "0123"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_4

    :goto_0
    return-void

    :cond_4
    new-instance v0, Lhb/a;

    const-string v1, "Invalid octal escape"

    invoke-virtual {p0}, Lmb/j6;->e()Lhb/c;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lhb/a;

    const-string v1, "Invalid escape sequence"

    invoke-virtual {p0}, Lmb/j6;->e()Lhb/c;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lhb/a;

    const-string v1, "Line break in literal not allowed"

    invoke-virtual {p0}, Lmb/j6;->e()Lhb/c;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lhb/a;

    const-string v1, "EOF in literal"

    invoke-virtual {p0}, Lmb/j6;->e()Lhb/c;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v0
.end method
