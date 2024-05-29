cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  paralysis-elixhauser-primary-care-quadriplegia---primary:
    run: paralysis-elixhauser-primary-care-quadriplegia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  paralysis-elixhauser-primary-care---primary:
    run: paralysis-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: paralysis-elixhauser-primary-care-quadriplegia---primary/output
  paralysis-elixhauser-primary-care-spasticity---primary:
    run: paralysis-elixhauser-primary-care-spasticity---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: paralysis-elixhauser-primary-care---primary/output
  diplegic-paralysis-elixhauser-primary-care---primary:
    run: diplegic-paralysis-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: paralysis-elixhauser-primary-care-spasticity---primary/output
  paralysis-elixhauser-primary-care-bladder---primary:
    run: paralysis-elixhauser-primary-care-bladder---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: diplegic-paralysis-elixhauser-primary-care---primary/output
  periodic-paralysis-elixhauser-primary-care---primary:
    run: periodic-paralysis-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: paralysis-elixhauser-primary-care-bladder---primary/output
  athetoid-paralysis-elixhauser-primary-care---primary:
    run: athetoid-paralysis-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: periodic-paralysis-elixhauser-primary-care---primary/output
  paralysis-elixhauser-primary-care-shock---primary:
    run: paralysis-elixhauser-primary-care-shock---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: athetoid-paralysis-elixhauser-primary-care---primary/output
  paralysis-elixhauser-primary-care-tetraplegia---primary:
    run: paralysis-elixhauser-primary-care-tetraplegia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: paralysis-elixhauser-primary-care-shock---primary/output
  paralysis-elixhauser-primary-care-equina---primary:
    run: paralysis-elixhauser-primary-care-equina---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: paralysis-elixhauser-primary-care-tetraplegia---primary/output
  paralysis-elixhauser-primary-care-flaccid---primary:
    run: paralysis-elixhauser-primary-care-flaccid---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: paralysis-elixhauser-primary-care-equina---primary/output
  obstetric-paralysis-elixhauser-primary-care---primary:
    run: obstetric-paralysis-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: paralysis-elixhauser-primary-care-flaccid---primary/output
  paralysis-elixhauser-primary-care-exercises---primary:
    run: paralysis-elixhauser-primary-care-exercises---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: obstetric-paralysis-elixhauser-primary-care---primary/output
  paralysis-elixhauser-primary-care-palsy---primary:
    run: paralysis-elixhauser-primary-care-palsy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: paralysis-elixhauser-primary-care-exercises---primary/output
  paralysis-elixhauser-primary-care-injury---primary:
    run: paralysis-elixhauser-primary-care-injury---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: paralysis-elixhauser-primary-care-palsy---primary/output
  congenital-paralysis-elixhauser-primary-care---primary:
    run: congenital-paralysis-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: paralysis-elixhauser-primary-care-injury---primary/output
  upper-paralysis-elixhauser-primary-care---primary:
    run: upper-paralysis-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: congenital-paralysis-elixhauser-primary-care---primary/output
  paralysis-elixhauser-primary-care-paraplegia---primary:
    run: paralysis-elixhauser-primary-care-paraplegia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: upper-paralysis-elixhauser-primary-care---primary/output
  lower-paralysis-elixhauser-primary-care---primary:
    run: lower-paralysis-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: paralysis-elixhauser-primary-care-paraplegia---primary/output
  paralysis-elixhauser-primary-care-correction---primary:
    run: paralysis-elixhauser-primary-care-correction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: lower-paralysis-elixhauser-primary-care---primary/output
  transient-paralysis-elixhauser-primary-care---primary:
    run: transient-paralysis-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: paralysis-elixhauser-primary-care-correction---primary/output
  paralysis-elixhauser-primary-care-unspecified---primary:
    run: paralysis-elixhauser-primary-care-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: transient-paralysis-elixhauser-primary-care---primary/output
  paralysis-elixhauser-primary-care-plexu---primary:
    run: paralysis-elixhauser-primary-care-plexu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: paralysis-elixhauser-primary-care-unspecified---primary/output
  cerebral-paralysis-elixhauser-primary-care---primary:
    run: cerebral-paralysis-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: paralysis-elixhauser-primary-care-plexu---primary/output
  acute-paralysis-elixhauser-primary-care---primary:
    run: acute-paralysis-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: cerebral-paralysis-elixhauser-primary-care---primary/output
  peripheral-paralysis-elixhauser-primary-care---primary:
    run: peripheral-paralysis-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: acute-paralysis-elixhauser-primary-care---primary/output
  paralysis-elixhauser-primary-care-hemiplegia---primary:
    run: paralysis-elixhauser-primary-care-hemiplegia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: peripheral-paralysis-elixhauser-primary-care---primary/output
  paralysis-elixhauser-primary-care-infantile---primary:
    run: paralysis-elixhauser-primary-care-infantile---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: paralysis-elixhauser-primary-care-hemiplegia---primary/output
  paralysis-elixhauser-primary-care-monoplegia---primary:
    run: paralysis-elixhauser-primary-care-monoplegia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: paralysis-elixhauser-primary-care-infantile---primary/output
  paralysis---primary:
    run: paralysis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: paralysis-elixhauser-primary-care-monoplegia---primary/output
  paralysis-elixhauser-primary-care-closed---primary:
    run: paralysis-elixhauser-primary-care-closed---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: paralysis---primary/output
  paralysis-elixhauser-primary-care-operation---primary:
    run: paralysis-elixhauser-primary-care-operation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: paralysis-elixhauser-primary-care-closed---primary/output
  paralysis-elixhauser-primary-care-nerve---primary:
    run: paralysis-elixhauser-primary-care-nerve---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: paralysis-elixhauser-primary-care-operation---primary/output
  other-paralysis-elixhauser-primary-care---primary:
    run: other-paralysis-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: paralysis-elixhauser-primary-care-nerve---primary/output
  ataxic-paralysis-elixhauser-primary-care---primary:
    run: ataxic-paralysis-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: other-paralysis-elixhauser-primary-care---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: ataxic-paralysis-elixhauser-primary-care---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
