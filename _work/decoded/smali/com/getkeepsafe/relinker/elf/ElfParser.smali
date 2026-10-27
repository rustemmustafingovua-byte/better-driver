.class public Lcom/getkeepsafe/relinker/elf/ElfParser;
.super Ljava/lang/Object;
.source "ElfParser.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Lcom/getkeepsafe/relinker/elf/Elf;


# instance fields
.field private final MAGIC:I

.field private final channel:Ljava/nio/channels/FileChannel;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const v0, 0x464c457f

    iput v0, p0, Lcom/getkeepsafe/relinker/elf/ElfParser;->MAGIC:I

    .line 36
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 41
    .local v0, "inputStream":Ljava/io/FileInputStream;
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/getkeepsafe/relinker/elf/ElfParser;->channel:Ljava/nio/channels/FileChannel;

    .line 42
    return-void

    .line 37
    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File is null or does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private offsetFromVma(Lcom/getkeepsafe/relinker/elf/Elf$Header;JJ)J
    .locals 9
    .param p1, "header"    # Lcom/getkeepsafe/relinker/elf/Elf$Header;
    .param p2, "numEntries"    # J
    .param p4, "vma"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "header",
            "numEntries",
            "vma"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    const-wide/16 v0, 0x0

    .local v0, "i":J
    :goto_0
    cmp-long v2, v0, p2

    if-gez v2, :cond_1

    .line 131
    invoke-virtual {p1, v0, v1}, Lcom/getkeepsafe/relinker/elf/Elf$Header;->getProgramHeader(J)Lcom/getkeepsafe/relinker/elf/Elf$ProgramHeader;

    move-result-object v2

    .line 132
    .local v2, "programHeader":Lcom/getkeepsafe/relinker/elf/Elf$ProgramHeader;
    iget-wide v3, v2, Lcom/getkeepsafe/relinker/elf/Elf$ProgramHeader;->type:J

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 134
    iget-wide v3, v2, Lcom/getkeepsafe/relinker/elf/Elf$ProgramHeader;->vaddr:J

    cmp-long v3, v3, p4

    if-gtz v3, :cond_0

    iget-wide v3, v2, Lcom/getkeepsafe/relinker/elf/Elf$ProgramHeader;->vaddr:J

    iget-wide v7, v2, Lcom/getkeepsafe/relinker/elf/Elf$ProgramHeader;->memsz:J

    add-long/2addr v3, v7

    cmp-long v3, p4, v3

    if-gtz v3, :cond_0

    .line 136
    iget-wide v3, v2, Lcom/getkeepsafe/relinker/elf/Elf$ProgramHeader;->vaddr:J

    sub-long v3, p4, v3

    iget-wide v5, v2, Lcom/getkeepsafe/relinker/elf/Elf$ProgramHeader;->offset:J

    add-long/2addr v3, v5

    return-wide v3

    .line 130
    .end local v2    # "programHeader":Lcom/getkeepsafe/relinker/elf/Elf$ProgramHeader;
    :cond_0
    add-long/2addr v0, v5

    goto :goto_0

    .line 141
    .end local v0    # "i":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not map vma to file offset!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/getkeepsafe/relinker/elf/ElfParser;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 147
    return-void
.end method

.method public parseHeader()Lcom/getkeepsafe/relinker/elf/Elf$Header;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/getkeepsafe/relinker/elf/ElfParser;->channel:Ljava/nio/channels/FileChannel;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 48
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 49
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 50
    invoke-virtual {p0, v0, v1, v2}, Lcom/getkeepsafe/relinker/elf/ElfParser;->readWord(Ljava/nio/ByteBuffer;J)J

    move-result-wide v1

    const-wide/32 v3, 0x464c457f

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 54
    const-wide/16 v1, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/getkeepsafe/relinker/elf/ElfParser;->readByte(Ljava/nio/ByteBuffer;J)S

    move-result v1

    .line 55
    .local v1, "fileClass":S
    const-wide/16 v2, 0x5

    invoke-virtual {p0, v0, v2, v3}, Lcom/getkeepsafe/relinker/elf/ElfParser;->readByte(Ljava/nio/ByteBuffer;J)S

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 56
    .local v2, "bigEndian":Z
    :goto_0
    if-ne v1, v3, :cond_1

    .line 57
    new-instance v3, Lcom/getkeepsafe/relinker/elf/Elf32Header;

    invoke-direct {v3, v2, p0}, Lcom/getkeepsafe/relinker/elf/Elf32Header;-><init>(ZLcom/getkeepsafe/relinker/elf/ElfParser;)V

    return-object v3

    .line 58
    :cond_1
    if-ne v1, v4, :cond_2

    .line 59
    new-instance v3, Lcom/getkeepsafe/relinker/elf/Elf64Header;

    invoke-direct {v3, v2, p0}, Lcom/getkeepsafe/relinker/elf/Elf64Header;-><init>(ZLcom/getkeepsafe/relinker/elf/ElfParser;)V

    return-object v3

    .line 62
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Invalid class type!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 51
    .end local v1    # "fileClass":S
    .end local v2    # "bigEndian":Z
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid ELF Magic!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public parseNeededDependencies()Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/getkeepsafe/relinker/elf/ElfParser;->channel:Ljava/nio/channels/FileChannel;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v1

    .line 68
    .local v6, "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/getkeepsafe/relinker/elf/ElfParser;->parseHeader()Lcom/getkeepsafe/relinker/elf/Elf$Header;

    move-result-object v1

    .line 69
    .local v1, "header":Lcom/getkeepsafe/relinker/elf/Elf$Header;
    const/16 v4, 0x8

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 70
    .local v7, "buffer":Ljava/nio/ByteBuffer;
    iget-boolean v4, v1, Lcom/getkeepsafe/relinker/elf/Elf$Header;->bigEndian:Z

    if-eqz v4, :cond_0

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_0
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 72
    iget v4, v1, Lcom/getkeepsafe/relinker/elf/Elf$Header;->phnum:I

    int-to-long v4, v4

    .line 73
    .local v4, "numProgramHeaderEntries":J
    const-wide/32 v8, 0xffff

    cmp-long v8, v4, v8

    if-nez v8, :cond_1

    .line 83
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/getkeepsafe/relinker/elf/Elf$Header;->getSectionHeader(I)Lcom/getkeepsafe/relinker/elf/Elf$SectionHeader;

    move-result-object v8

    .line 84
    .local v8, "sectionHeader":Lcom/getkeepsafe/relinker/elf/Elf$SectionHeader;
    iget-wide v4, v8, Lcom/getkeepsafe/relinker/elf/Elf$SectionHeader;->info:J

    .line 87
    .end local v8    # "sectionHeader":Lcom/getkeepsafe/relinker/elf/Elf$SectionHeader;
    :cond_1
    const-wide/16 v8, 0x0

    .line 88
    .local v8, "dynamicSectionOff":J
    const-wide/16 v10, 0x0

    .local v10, "i":J
    :goto_1
    cmp-long v12, v10, v4

    const-wide/16 v13, 0x1

    if-gez v12, :cond_3

    .line 89
    invoke-virtual {v1, v10, v11}, Lcom/getkeepsafe/relinker/elf/Elf$Header;->getProgramHeader(J)Lcom/getkeepsafe/relinker/elf/Elf$ProgramHeader;

    move-result-object v12

    .line 90
    .local v12, "programHeader":Lcom/getkeepsafe/relinker/elf/Elf$ProgramHeader;
    move-wide v15, v2

    iget-wide v2, v12, Lcom/getkeepsafe/relinker/elf/Elf$ProgramHeader;->type:J

    const-wide/16 v17, 0x2

    cmp-long v2, v2, v17

    if-nez v2, :cond_2

    .line 91
    iget-wide v8, v12, Lcom/getkeepsafe/relinker/elf/Elf$ProgramHeader;->offset:J

    .line 92
    goto :goto_2

    .line 88
    .end local v12    # "programHeader":Lcom/getkeepsafe/relinker/elf/Elf$ProgramHeader;
    :cond_2
    add-long/2addr v10, v13

    move-wide v2, v15

    goto :goto_1

    :cond_3
    move-wide v15, v2

    .line 96
    .end local v10    # "i":J
    :goto_2
    cmp-long v2, v8, v15

    if-nez v2, :cond_4

    .line 98
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 101
    :cond_4
    const/4 v2, 0x0

    .line 102
    .local v2, "i":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v3

    .line 103
    .local v10, "neededOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-wide/16 v11, 0x0

    .line 106
    .local v11, "vStringTableOff":J
    :goto_3
    invoke-virtual {v1, v8, v9, v2}, Lcom/getkeepsafe/relinker/elf/Elf$Header;->getDynamicStructure(JI)Lcom/getkeepsafe/relinker/elf/Elf$DynamicStructure;

    move-result-object v3

    .line 107
    .local v3, "dynStructure":Lcom/getkeepsafe/relinker/elf/Elf$DynamicStructure;
    move-wide/from16 v17, v13

    iget-wide v13, v3, Lcom/getkeepsafe/relinker/elf/Elf$DynamicStructure;->tag:J

    cmp-long v13, v13, v17

    if-nez v13, :cond_5

    .line 108
    iget-wide v13, v3, Lcom/getkeepsafe/relinker/elf/Elf$DynamicStructure;->val:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 109
    :cond_5
    iget-wide v13, v3, Lcom/getkeepsafe/relinker/elf/Elf$DynamicStructure;->tag:J

    const-wide/16 v19, 0x5

    cmp-long v13, v13, v19

    if-nez v13, :cond_6

    .line 110
    iget-wide v11, v3, Lcom/getkeepsafe/relinker/elf/Elf$DynamicStructure;->val:J

    .line 112
    :cond_6
    :goto_4
    add-int/lit8 v13, v2, 0x1

    .line 113
    .end local v2    # "i":I
    .local v13, "i":I
    move-object v2, v1

    .end local v1    # "header":Lcom/getkeepsafe/relinker/elf/Elf$Header;
    .local v2, "header":Lcom/getkeepsafe/relinker/elf/Elf$Header;
    iget-wide v0, v3, Lcom/getkeepsafe/relinker/elf/Elf$DynamicStructure;->tag:J

    cmp-long v0, v0, v15

    if-nez v0, :cond_9

    .line 115
    cmp-long v0, v11, v15

    if-eqz v0, :cond_8

    .line 120
    move-object/from16 v0, p0

    move-object v1, v2

    move-wide/from16 v22, v11

    move-object v11, v3

    move-wide v2, v4

    move-wide/from16 v4, v22

    .end local v3    # "dynStructure":Lcom/getkeepsafe/relinker/elf/Elf$DynamicStructure;
    .restart local v1    # "header":Lcom/getkeepsafe/relinker/elf/Elf$Header;
    .local v2, "numProgramHeaderEntries":J
    .local v4, "vStringTableOff":J
    .local v11, "dynStructure":Lcom/getkeepsafe/relinker/elf/Elf$DynamicStructure;
    invoke-direct/range {v0 .. v5}, Lcom/getkeepsafe/relinker/elf/ElfParser;->offsetFromVma(Lcom/getkeepsafe/relinker/elf/Elf$Header;JJ)J

    move-result-wide v14

    .line 121
    .local v14, "stringTableOff":J
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    .line 122
    .local v16, "strOff":Ljava/lang/Long;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move-object/from16 v19, v1

    move-wide/from16 v20, v2

    .end local v1    # "header":Lcom/getkeepsafe/relinker/elf/Elf$Header;
    .end local v2    # "numProgramHeaderEntries":J
    .local v19, "header":Lcom/getkeepsafe/relinker/elf/Elf$Header;
    .local v20, "numProgramHeaderEntries":J
    add-long v1, v14, v17

    invoke-virtual {v0, v7, v1, v2}, Lcom/getkeepsafe/relinker/elf/ElfParser;->readString(Ljava/nio/ByteBuffer;J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v16    # "strOff":Ljava/lang/Long;
    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    goto :goto_5

    .line 125
    .end local v19    # "header":Lcom/getkeepsafe/relinker/elf/Elf$Header;
    .end local v20    # "numProgramHeaderEntries":J
    .restart local v1    # "header":Lcom/getkeepsafe/relinker/elf/Elf$Header;
    .restart local v2    # "numProgramHeaderEntries":J
    :cond_7
    return-object v6

    .line 116
    .end local v1    # "header":Lcom/getkeepsafe/relinker/elf/Elf$Header;
    .end local v14    # "stringTableOff":J
    .local v2, "header":Lcom/getkeepsafe/relinker/elf/Elf$Header;
    .restart local v3    # "dynStructure":Lcom/getkeepsafe/relinker/elf/Elf$DynamicStructure;
    .local v4, "numProgramHeaderEntries":J
    .local v11, "vStringTableOff":J
    :cond_8
    move-object/from16 v19, v2

    .end local v2    # "header":Lcom/getkeepsafe/relinker/elf/Elf$Header;
    .restart local v19    # "header":Lcom/getkeepsafe/relinker/elf/Elf$Header;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "String table offset not found!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    .end local v19    # "header":Lcom/getkeepsafe/relinker/elf/Elf$Header;
    .restart local v2    # "header":Lcom/getkeepsafe/relinker/elf/Elf$Header;
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v19, v2

    move-wide/from16 v20, v4

    move-wide v4, v11

    move-object v11, v3

    .end local v2    # "header":Lcom/getkeepsafe/relinker/elf/Elf$Header;
    .end local v3    # "dynStructure":Lcom/getkeepsafe/relinker/elf/Elf$DynamicStructure;
    .local v4, "vStringTableOff":J
    .local v11, "dynStructure":Lcom/getkeepsafe/relinker/elf/Elf$DynamicStructure;
    .restart local v19    # "header":Lcom/getkeepsafe/relinker/elf/Elf$Header;
    .restart local v20    # "numProgramHeaderEntries":J
    move-wide v11, v4

    move v2, v13

    move-wide/from16 v13, v17

    move-object/from16 v1, v19

    move-wide/from16 v4, v20

    goto :goto_3
.end method

.method protected read(Ljava/nio/ByteBuffer;JI)V
    .locals 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # J
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "buffer",
            "offset",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 181
    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 182
    const-wide/16 v1, 0x0

    .line 183
    .local v1, "bytesRead":J
    :goto_0
    int-to-long v3, p4

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    .line 184
    iget-object v3, p0, Lcom/getkeepsafe/relinker/elf/ElfParser;->channel:Ljava/nio/channels/FileChannel;

    add-long v4, p2, v1

    invoke-virtual {v3, p1, v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v3

    .line 185
    .local v3, "read":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 189
    int-to-long v4, v3

    add-long/2addr v1, v4

    .line 190
    .end local v3    # "read":I
    goto :goto_0

    .line 186
    .restart local v3    # "read":I
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 191
    .end local v3    # "read":I
    :cond_1
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 192
    return-void
.end method

.method protected readByte(Ljava/nio/ByteBuffer;J)S
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "buffer",
            "offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/getkeepsafe/relinker/elf/ElfParser;->read(Ljava/nio/ByteBuffer;JI)V

    .line 176
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method protected readHalf(Ljava/nio/ByteBuffer;J)I
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "buffer",
            "offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/getkeepsafe/relinker/elf/ElfParser;->read(Ljava/nio/ByteBuffer;JI)V

    .line 171
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method protected readLong(Ljava/nio/ByteBuffer;J)J
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "buffer",
            "offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    const/16 v0, 0x8

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/getkeepsafe/relinker/elf/ElfParser;->read(Ljava/nio/ByteBuffer;JI)V

    .line 161
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method protected readString(Ljava/nio/ByteBuffer;J)Ljava/lang/String;
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "buffer",
            "offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .local v0, "builder":Ljava/lang/StringBuilder;
    :goto_0
    const-wide/16 v1, 0x1

    add-long/2addr v1, p2

    .end local p2    # "offset":J
    .local v1, "offset":J
    invoke-virtual {p0, p1, p2, p3}, Lcom/getkeepsafe/relinker/elf/ElfParser;->readByte(Ljava/nio/ByteBuffer;J)S

    move-result p2

    move p3, p2

    .local p3, "c":S
    if-eqz p2, :cond_0

    .line 153
    int-to-char p2, p3

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-wide p2, v1

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    return-object p2
.end method

.method protected readWord(Ljava/nio/ByteBuffer;J)J
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "buffer",
            "offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    const/4 v0, 0x4

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/getkeepsafe/relinker/elf/ElfParser;->read(Ljava/nio/ByteBuffer;JI)V

    .line 166
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method
